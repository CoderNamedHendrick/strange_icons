import logging

from strange_icons_crawler import StrangeIconsCrawler
from web_crawler_starter import *


def main():
    crawler = StrangeIconsCrawler(driver)

    try:
        icon_options = crawler.fetch_icon_options()

        for icon_pack in icon_options[1]:
            crawler.select_icon_pack(icon_pack, icon_options)

            for icon_style in icon_style_values():
                crawler.tap_icon_style_button(icon_style)

                for icon in crawler.fetch_icons():
                    crawler.download_icon(icon)


    except Exception as e:
        logging.warning(f"An exception occurred while running script: {e}")
        print(f"An exception occurred while running script: {e}")

    finally:
        crawler.dispose()


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    main()
