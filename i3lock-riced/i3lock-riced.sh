#!/usr/bin/env bash

# first line made with help from chatgpt its past midnight im so tired i just want this to work

# next 3 lines taken (partially) from https://github.com/veltall/custom-i3lock

CURRENT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

xfce4-screenshooter -fs /tmp/screenshot.png

magick /tmp/screenshot.png -blur 0x4 /tmp/blur.png

composite -gravity southeast "$CURRENT_DIR/Teto-by-@m1ng_0.png" /tmp/blur.png /tmp/lock.png

i3lock -i /tmp/lock.png
