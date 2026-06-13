#!/bin/bash

echo "Installing packages..."

sudo pacman -Syu

sudo pacman -S --needed $(cat pkglist.txt)

if command -v yay >/dev/null 2>&1; then
    yay -S --needed $(cat aurlist.txt)
fi

mkdir -p ~/.config

cp -r config/kitty ~/.config/

cp config/kdeglobals ~/.config/
cp config/kwinrc ~/.config/
cp config/kglobalshortcutsrc ~/.config/
cp config/dolphinrc ~/.config/
cp config/kcminputrc ~/.config/

echo "Installation complete."
