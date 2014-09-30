#!/bin/bash
# Adjust brightness value

BFILE=/sys/class/backlight/acpi_video0/brightness

if [ $# != 1 ]
then
    echo "Usage: $(basename $0) delta"
    echo "e.g. $(basename $0) -10"
    exit 1
fi

CVALUE=$(cat $BFILE)
NVALUE=$((CVALUE + $1))

if [[ $NVALUE -le 0 ]]
then
    NVALUE=0
fi

if [[ $NVALUE -ge 100 ]]
then
    NVALUE=100
fi

echo $NVALUE > $BFILE
