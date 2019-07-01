#!/bin/bash
wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz

counter=1
while [ $counter -le 10 ]
do
unset x y w h
  eval $(xwininfo -id $(xdotool getactivewindow) |
    sed -n -e "s/^ \+Absolute upper-left X: \+\([0-9]\+\).*/x=\1/p" \
           -e "s/^ \+Absolute upper-left Y: \+\([0-9]\+\).*/y=\1/p" \
           -e "s/^ \+Width: \+\([0-9]\+\).*/w=\1/p" \
           -e "s/^ \+Height: \+\([0-9]\+\).*/h=\1/p" )
#echo -n "$x $y $w $h"

wmctrl -r :ACTIVE: -e 0,$(($x - 20)),$(($y - 20)),$(($w + 40)),$(($h + 40))
sleep 0.1

 unset x y w h
	 eval $(xwininfo -id $(xdotool getactivewindow) |
		 sed -n -e "s/^ \+Absolute upper-left X: \+\([0-9]\+\).*/x=\1/p" \
            -e "s/^ \+Absolute upper-left Y: \+\([0-9]\+\).*/y=\1/p" \
	            -e "s/^ \+Width: \+\([0-9]\+\).*/w=\1/p" \
	            -e "s/^ \+Height: \+\([0-9]\+\).*/h=\1/p" )
 
 wmctrl -r :ACTIVE: -e 0,$(($x + 20)),$(($y + 20)),$(($w - 40)),$(($h - 40))
 sleep 0.1
 ((counter++))
done

