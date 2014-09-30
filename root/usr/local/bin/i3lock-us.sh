#!/bin/bash
# set keyboard layout to en-US and lock

setxkbmap -layout us
notify-send -t 500 -u low 'Layout en-US'
i3lock -c 111111
