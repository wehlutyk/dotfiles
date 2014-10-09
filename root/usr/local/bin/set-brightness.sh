#!/bin/bash
# Adjust brightness value

BFILE=/sys/class/backlight/intel_backlight/brightness
MFILE=/sys/class/backlight/intel_backlight/max_brightness

if [ $# != 1 ]
then
    echo "Usage: $(basename $0) delta"
    echo "e.g. $(basename $0) -50"
    exit 1
fi

CVALUE=$(cat $BFILE)
MVALUE=$(cat $MFILE)
NVALUE=$((CVALUE + $1))

if [[ $NVALUE -lt 0 ]]
then
    NVALUE=0
fi

if [[ $NVALUE -gt $MVALUE ]]
then
    NVALUE=$MVALUE
fi

echo $NVALUE > $BFILE
