TEMPLATE-AppImage 🐧

GitHub Downloads CI Build Status

    Latest Stable Release

AppImage made using sharun, which makes it extremely easy to turn any binary into a portable package without using containers or similar tricks.

This AppImage bundles everything and should work on any linux distro, even on musl based ones.

This AppImage can work without FUSE at all thanks to the uruntime

More at: AnyLinux-AppImages
raison d'être
Inspiration Image

# Unofficial JDownloader2 AppImage

This repository builds a portable AppImage of JDownloader2 for Linux.
Official site: https://jdownloader.org

The script uses `quick-sharun.sh` to simplify AppImage creation.

## Usage

1. Download the latest AppImage from the [GitHub Releases](https://github.com/Shikakiben/JDownloader2-AppImage/releases) page.
2. Make the file executable:

	right click > Properties > Allow executing file as a program

	or:
	```bash
	chmod +x JDownloader2-*.AppImage
	```
3. Run it:

	double click

	or:
	```bash
	./JDownloader2-*.AppImage
	```
