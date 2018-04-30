#!/bin/bash

i3status | while :
do
	read line
	brightness=`xbacklight -get`
	echo "BR $brightness | $line" || exit 1
done
