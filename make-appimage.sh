#!/bin/sh

set -eux

ARCH="$(uname -m)"
VERSION="$(date +'%y.%m.%d')"
export ARCH VERSION
export OUTPATH=./dist
export UPINFO="gh-releases-zsync|${GITHUB_REPOSITORY%/*}|${GITHUB_REPOSITORY#*/}|latest|*$ARCH.AppImage.zsync"


# Deploy dependencies
quick-sharun \
        ./AppDir/bin/* \
        /usr/lib/jvm/java-25-openjdk/*

# Make the AppImage with uruntime
quick-sharun --make-appimage
