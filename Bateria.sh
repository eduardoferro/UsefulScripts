#!/bin/bash
MOREF=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "time to empty"` 
notify-send 'Battery' "$MOREF"
