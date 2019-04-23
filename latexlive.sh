#!/bin/bash
# REMEMBER BEEING IN THE FOLDER OF THE FILE 
(latexmk -pvc -pdf $1) &
FIL=$1
FIL="${FIL::-4}"
END='.pdf'
while [ ! -f "$FIL$END" ]; do 
	echo "WAITING"
	sleep 1;
done
evince "$FIL$END"
