#!/bin/bash
VAL="0"
while :; do
	ISCHARG=`cat /sys/class/power_supply/axp288_fuel_gauge/status`
	if [ $ISCHARG == "Charging" ]; then
		continue
	fi
	BAT=`cat /sys/class/power_supply/axp288_fuel_gauge/capacity`
	LIMIT="10"
	if [ $LIMIT -gt $BAT ]; then
		light -S $VAL
		sleep 0.1
		if [ "$VAL" -eq "0" ]; then
			VAL="100"
		else
			VAL="0"
		fi
	else
		sleep 5
	fi
done	
