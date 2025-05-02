import logging
from typing import Tuple

from selenium.webdriver import ActionChains
from selenium.webdriver.chrome.webdriver import WebDriver
from selenium.webdriver.common.by import By
from selenium.webdriver.remote.webelement import WebElement
from selenium.webdriver.support import expected_conditions as ec
from selenium.webdriver.support.wait import WebDriverWait

from web_crawler_starter import *


class StrangeIconsCrawler:
    _i_pack: str
    _i_style: str

    def __init__(self, wd: WebDriver):
        self.driver = wd
        self.driver.get(URL)

    """
    fetches the icon options/types, returns a single web-element for
    the icon section and a string list of icon options/names/types
    """

    def fetch_icon_options(self) -> Tuple[WebElement, List[str]]:
        select_area = WebDriverWait(self.driver, timeout=TIME_OUT).until(
            ec.presence_of_element_located((By.CLASS_NAME, "sticky"))
        )

        icon_section_buttons = select_area.find_elements(By.CLASS_NAME, "relative")

        assert len(icon_section_buttons) == 2

        icon_selector_button = icon_section_buttons[1]
        icon_options = icon_selector_button.find_elements(By.TAG_NAME, "option")

        icon_options = list(map(lambda i: i.text.strip(), icon_options))

        return icon_selector_button, icon_options

    """
    selects an icon pack from the options list
    """

    def select_icon_pack(self, icon_pack_name: str, icon_options: Tuple[WebElement, List[str]]) -> None:
        assert icon_options is not None
        selector_button, icon_options = icon_options

        assert icon_pack_name.strip() in icon_options

        element_options = selector_button.find_elements(By.TAG_NAME, "option")

        for option in element_options:
            if option.text == icon_pack_name:
                option.click()
                self._i_pack = option.text.split(" ")[0]
                break

    """
    selects an icon style, icon styles are Monotone, Duotone and Solid
    """

    def tap_icon_style_button(self, style: IconStyle) -> None:
        select_area = WebDriverWait(driver, timeout=TIME_OUT).until(
            ec.presence_of_element_located((By.CLASS_NAME, "sticky"))
        )

        label_elems = select_area.find_elements(By.TAG_NAME, "label")

        for label in label_elems:
            if label.get_property("title") == style.value:
                label.click()
                self._i_style = label.get_property('title').lower()
                break

    """
    fetches the icons and ensure they exist before returning the list of WebElement
    """

    def fetch_icons(self) -> List[WebElement]:
        icons = WebDriverWait(driver, timeout=TIME_OUT).until(
            ec.presence_of_all_elements_located((By.CLASS_NAME, "py-6"))
        )

        assert len(icons) > 0

        logging.info(f"{self._i_pack}-{self._i_style} icons count: {len(icons)}")
        print(f"{self._i_pack}-{self._i_style} icons count: {len(icons)}")

        return icons

    """
    Downloads the given icon
    """

    def download_icon(self, icon: WebElement) -> None:
        actions = ActionChains(self.driver)
        actions.scroll_to_element(icon).perform()

        icon.click()

        popup_elem = WebDriverWait(driver, timeout=TIME_OUT).until(
            ec.presence_of_element_located((By.CLASS_NAME, "popup"))
        )

        images = popup_elem.find_elements(By.TAG_NAME, "img")

        for image in images:
            if image.get_property("alt") == icon.text:
                download_svg_file(image.get_property("src"), f"/{self._i_pack}/{self._i_style}", icon.text)
                popup_elem.find_element(By.CLASS_NAME, "p-2").click()  # closes the download popup
                print(f"Successfully downloaded {self._i_pack}-{self._i_style} {icon.text}")
                break

    """
    Dispose crawler
    """
    def dispose(self):
        self.driver.quit()
        self.driver = None
        self._i_pack = ""
        self._i_style = ""
