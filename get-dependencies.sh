#!/bin/sh

set -eux



# Installer les dépendances nécessaires pour le build AppImage et quick-sharun
pacman -Syu --noconfirm \
    wget \
    p7zip \
    gzip \
    which \
    desktop-file-utils \
    libxtst \
    zsync \
    jq

echo "Dépendances et JDownloader2 installés."