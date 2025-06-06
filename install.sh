#!/bin/bash

DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Installing desktop icon for $DIR"
echo "[Desktop Entry]
Type=Application
Version=1.0
Name=SwitchSlot
Icon=$DIR/icon.png
Exec=pkexec bash $DIR/switchslot.sh
Terminal=true
Categories=System;Monitor;ConsoleOnly;
" > /usr/share/applications/switchslot.desktop

update-desktop-database /usr/share/applications/
