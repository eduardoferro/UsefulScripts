#! /bin/bash
if test "$1" = "" ; then
	echo "No hay archivo, saliendo..."
	exit 0
else
	echo $1
	convert $1 -resize 1080x1920 ~/fondo.jpg
	convert ~/fondo.jpg -blur 0x4 ~/fondo.jpg
	wal -i ~/fondo.jpg	
fi

