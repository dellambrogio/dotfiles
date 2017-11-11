#!/bin/bash

DIR=`dirname $0`

# disable laptop monitor
xrandr --output eDP1 --on

xrandr --dpi 200

# Load a resource file, and merge with the current settings
xrdb -merge $DIR/XresourcesLaptop

# restat i3
i3-msg restart
