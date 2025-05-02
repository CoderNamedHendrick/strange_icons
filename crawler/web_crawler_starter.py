import os
from enum import Enum
from typing import List

from selenium import webdriver
from selenium.webdriver.chrome.service import Service as ChromeService
from webdriver_manager.chrome import ChromeDriverManager

# inject base file path from env
BASE_FILE_PATH = os.getenv("BASE_FILE_PATH")

chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument("--headless=new")

driver = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()), options=chrome_options)

URL = "https://www.strangeicons.com/#section-icon-display"
TIME_OUT = 15


class IconStyle(Enum):
    Monotone = 'Monotone'
    Duotone = "Duotone"
    Solid = 'Solid'


def icon_style_values() -> List[IconStyle]:
    return [IconStyle.Monotone, IconStyle.Duotone, IconStyle.Solid]


def download_svg_file(url, i_dir, file_name):
    from requests import get
    reply = get(url, stream=True)

    if BASE_FILE_PATH is None:
        raise Exception("BASE_FILE_PATH is not set")

    os_dir = BASE_FILE_PATH + i_dir
    os.makedirs(os_dir, exist_ok=True)

    file_path = f"{os_dir}/{file_name}.svg"

    with open(file_path, 'wb') as file:
        for chunk in reply.iter_content(chunk_size=1024):
            if chunk: file.write(chunk)
