#/bin/bash
ISLIGHT=`cat /home/eduardi/.config/togglethemes/light`
if [ "$ISLIGHT" = "yes" ] ; then
	cat /home/eduardi/.config/togglethemes/light
	/home/eduardi/Scripts/darktheme.sh
	cp ~/.config/togglethemes/dark.json ~/.config/Code/User/settings.json
	cp ~/.config/togglethemes/dockdark.theme ~/.local/share/plank/themes/Capeos/dock.theme
	echo "no" > /home/eduardi/.config/togglethemes/light
else
	cat /home/eduardi/.config/togglethemes/light
	/home/eduardi/Scripts/lighttheme.sh
	cp ~/.config/togglethemes/light.json ~/.config/Code/User/settings.json
	cp ~/.config/togglethemes/docklight.theme ~/.local/share/plank/themes/Capeos/dock.theme
	echo "yes" > /home/eduardi/.config/togglethemes/light
fi
