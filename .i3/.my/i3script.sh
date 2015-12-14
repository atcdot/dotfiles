#!/bin/bash

# shell scipt to prepend i3status with more stuff

i3status --config ~/.i3/.i3status.conf | while :
do
    read line
    RAMT=$(awk '/MemTotal/ {print $2}' /proc/meminfo)
    RAMF=$(awk '/MemAvailable/ {print $2}' /proc/meminfo)
   let "RAMP=100-RAMF*100/RAMT"
    SWAPT=$(awk '/SwapTotal/ {print $2}' /proc/meminfo)
    SWAPD=$(awk '/Dirty/ {print $2}' /proc/meminfo)
   let "SWAPP=SWAPD*100/SWAPT"
    dat="[{ \"full_text\": \"RAM:$RAMP%  Swap:$SWAPP%\"},"
    echo "${line/[/$dat}" || exit 1
done
