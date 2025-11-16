#!/bin/sh

set -eux

ARCH="$(uname -m)"
VERSION=$(pacman -Q JDownloader2 | awk '{print $2; exit}') # example command to get version of application here
export ARCH VERSION
export OUTPATH=./dist
export UPINFO="gh-releases-zsync|${GITHUB_REPOSITORY%/*}|${GITHUB_REPOSITORY#*/}|latest|*$ARCH.AppImage.zsync"

# Deploy dependencies
quick-sharun /AppDir/bin/JDownloader2

# Make the AppImage with uruntime
quick-sharun --make-appimage
