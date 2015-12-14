#!/bin/bash
touchPadId=$(xinput list | grep -i 'ETPS/2 Elantech Touchpad' | cut -d "=" -f 2 | cut -b 1-2)
enabledId=$(xinput list-props $touchPadId | grep -i enabled | cut -d ":" -f 1 | cut -b 18-20)
state=$(xinput list-props $touchPadId | grep -i enabled | cut -d ":" -f 2 | cut -b 2)
if [ "$state" == "1" ]; then
xinput set-prop $touchPadId $enabledId 0
else
xinput set-prop $touchPadId $enabledId 1
fi