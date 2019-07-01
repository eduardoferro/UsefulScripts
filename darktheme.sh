#!/bin/bash
xfconf-query -c xsettings -p /Net/ThemeName -s "Mojave-dark"
xfconf-query -c xfwm4 -p /general/theme -s "Ant-Dracula-Slim"
cd
xrdb .Xresources
