#!/bin/bash
mkdir -p "$HOME/.icons/"
mkdir -p "$HOME/AppImage/"
mkdir -p "$HOME/.local/share/applications/"

wget "https://github.com/Paullux/FranceTV/raw/main/images/france-tv-2.png" -O "$HOME/.icons/france-tv-2.png"  
wget "https://github.com/Paullux/FranceTV/releases/download/1.1/FranceTV-1.1-x86_64.AppImage"

chmod +x FranceTV-1.1-x86_64.AppImage

mv FranceTV-1.1-x86_64.AppImage "$HOME/AppImage/FranceTV-1.1-x86_64.AppImage"

cat << FIN > "$HOME/.local/share/applications/franceTV.desktop"
#!/usr/bin/env xdg-open
[Desktop Entry]
Type=Application
Name=france-tv
Comment=FranceTV.
Exec=$HOME/AppImage/FranceTV-1.1-x86_64.AppImage
Icon=$HOME/.icons/france-tv-2.png
Categories=Video;
FIN
