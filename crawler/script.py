import logging
import time
from typing import Tuple

from strange_icons_crawler import StrangeIconsCrawler
from web_crawler_starter import *


def main():
    crawler = StrangeIconsCrawler(driver)

    try:
        icon_options = crawler.fetch_icon_options()

        d_icons: List[Tuple[str, str, str]] = list()

        print(f"started retrieving icons by: {time.strftime('%X')}")
        for icon_pack in icon_options[1]:
            crawler.select_icon_pack(icon_pack, icon_options)

            for icon_style in icon_style_values():
                crawler.tap_icon_style_button(icon_style)

                for icon in crawler.fetch_icons():
                    d_icons.extend(crawler.process_downloadable_icons(icon))

        print(f"finished retrieving icons by: {time.strftime('%X')}")

        print(f"found {len(d_icons)} icons")

        print(f"started downloading icons by: {time.strftime('%X')}")

        # TODO: optimize downloads
        for d_icon in d_icons:
            src, i_dir, file_name = d_icon
            download_svg_file(src, i_dir, file_name)
            print(f"Successfully downloaded {i_dir} {file_name}")

        print(f"finished downloading icons by: {time.strftime('%X')}")



    except Exception as e:
        logging.warning(f"An exception occurred while running script: {e}")
        print(f"An exception occurred while running script: {e}")

    finally:
        crawler.dispose()


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    main()
