#!/bin/bash

DIR=`dirname $0`

# disable laptop monitor
xrandr --output eDP1 --off

xrandr --dpi 120

# Load a resource file, and merge with the current settings
xrdb -merge $DIR/XresourcesExternalMonitor

# restart i3
i3-msg restart
 