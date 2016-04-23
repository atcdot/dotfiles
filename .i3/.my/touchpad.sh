#!/bin/bash
#touchPadId=$(xinput list | grep -i 'ETPS/2 Elantech Touchpad' | cut -d "=" -f 2 | cut -b 1-2)
#enabledId=$(xinput list-props $touchPadId | grep -i enabled | cut -d ":" -f 1 | cut -b 18-20)
#state=$(xinput list-props $touchPadId | grep -i enabled | cut -d ":" -f 2 | cut -b 2)
#if [ "$state" == "1" ]; then
#xinput set-prop $touchPadId $enabledId 0
#else
#xinput set-prop $touchPadId $enabledId 1
#fi

if synclient -l | grep "TouchpadOff.*=.*0" ; then
 synclient TouchpadOff=1 ;
else
 synclient TouchpadOff=0 ;
 synclient HorizTwoFingerScroll=1 ;
 synclient AccelFactor=0.1 ;
 synclient MaxSpeed=3 ;
 synclient MinSpeed=2 ;
 synclient CircularScrolling=1 ;
fi


