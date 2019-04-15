#!/bin/bash

$1=(cat /sys/class/power_supply/axp288_fuel_gauge/capacity)
$2=10
if $(($1+0)) < $2 then
	notify-send -u normal -t 1000 -i info 'hw' 'LOW BATTERY'
	sleep(1)
fi
