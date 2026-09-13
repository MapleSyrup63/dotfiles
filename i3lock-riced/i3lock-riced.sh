#!/usr/bin/env bash

# first line made with help from chatgpt its past midnight im so tired i just want this to work

# next 3 lines taken (partially) from https://github.com/veltall/custom-i3lock

CURRENT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

xfce4-screenshooter -fs /tmp/screenshot.png

magick /tmp/screenshot.png -blur 0x4 /tmp/blur.png

composite -gravity southeast "$CURRENT_DIR/Teto-by-@m1ng_0.png" /tmp/blur.png /tmp/lock.png

# FINALY WE GET TO THE COLORS AHAHAHAHAHAHAH
RED='950101'
TRED='950101aa'
FULLRED='ff0000'

BLACK='000000'
TBLACK='000000aa'
T='00000000'

WHITE='dddddd'
TWHITE='ddddddaa'

YELLOW='933d06'

i3lock -i /tmp/lock.png -k --indicator \
--insidever-color=$TBLACK     \
--ringver-color=$RED   \
\
--insidewrong-color=$TBLACK   \
--ringwrong-color=$RED     \
\
--inside-color=$TBLACK        \
--ring-color=$RED        \
--line-color=$TRED          \
--separator-color=$FULLRED   \
\
--verif-color=$WHITE          \
--wrong-color=$RED          \
--time-color=$WHITE           \
--date-color=$WHITE           \
--layout-color=$WHITE         \
--keyhl-color=$FULLRED         \
--bshl-color=$FULLRED       \

