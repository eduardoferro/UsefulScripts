#!/bin/bash
VAL="0"
while :; do
	ISCHARG=`cat /sys/class/power_supply/BAT0/status`
	if [ $ISCHARG == "Charging" ]; then
		sleep 5 	
		continue
	fi
	BAT=`cat /sys/class/power_supply/BAT0/capacity`
	LIMIT="5"
	if [ $LIMIT -gt $BAT ]; then
		light -S $VAL
		sleep 0.5
		if [ $VAL -eq "0" ]; then
			VAL="10"
		else
			VAL="0"
		fi
	else
		sleep 5
	fi
done	
