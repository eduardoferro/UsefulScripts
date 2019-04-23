#!/bin/bash
cd
while true; do
	notify-send "Iniciando Sync"
	echo "SYNCING" > $HOME/.config/rclone/state.txt 
	rclone sync $HOME megabackup:BackUp -L --exclude-from=$HOME/.config/rclone/exclude.txt
	
	notify-send "Terminado Sync"
	echo "DONE" > $HOME/.config/rclone/state.txt
	sleep 10800
done
