#!/bin/bash

#(1)if you want sound uncomment next line and see (2) 
#export BEEP=/path/to/sound/file
export BEEP=./fding.wav

if [[ -z "$1" ]]
	then
		echo 'USAGE: ./countdown.sh <minutes>'
		exit 1
fi

SEC_P_MIN=60
TIME_SEC=$(echo "scale=2;$1*$SEC_P_MIN" | bc)

#echo "countdown start: $TIME_SEC seconds"
#echo "time is ticking..."
sleep $TIME_SEC
#echo "coundtdown end"

#(2)if you want sound uncomment next line too
#if you do not want ot use pulseaudio server try (3)
paplay $BEEP

#(3)uncomment lines respectively and see which may work
#echo -ne '\007'
#tput bel
