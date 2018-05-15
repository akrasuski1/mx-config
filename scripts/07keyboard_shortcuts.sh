#!/usr/bin/env bash

set -e

# Make Super alone emulate Super+Space
cp ../helpers/escape-super.desktop ~/.config/autostart


xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/Super_L' -r
xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Super>space' -s xfce4-popup-whiskermenu -n -t string

xfconf-query -c xfce4-keyboard-shortcuts -p '/xfwm4/custom/<Primary><Super>Left' -s tile_left_key -n -t string
xfconf-query -c xfce4-keyboard-shortcuts -p '/xfwm4/custom/<Primary><Super>Right' -s tile_right_key -n -t string

xfconf-query -c xfce4-keyboard-shortcuts -p '/xfwm4/custom/<Super>Tab' -r
xfconf-query -c xfce4-keyboard-shortcuts -p '/xfwm4/custom/<Alt>grave' -s switch_window_key -n -t string

xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Primary><Super>Up' -s "/home/$USER/bin/extrawm up" -n -t string
xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Primary><Super>Down' -s "/home/$USER/bin/extrawm down" -n -t string
# Ctrl+Shift+M (like [M]onitor) makes displays align in "Extend Left" 
# configuration, normally not available except via pretty deep menu.
xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Primary><Shift>m' -s "/home/$USER/bin/monitor_extend_left" -n -t string


xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Primary><Alt>t' -s xfce4-terminal -n -t string

xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Primary><Alt>Delete' -r
xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Super>l' -s xflock4 -n -t string

xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/Print' -s 'xfce4-screenshooter -f' -n -t string
xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Shift>Print' -s 'xfce4-screenshooter -r' -n -t string

xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/F12' -s 'xfce4-terminal --hide-menubar --hide-borders --drop-down' -n -t string
xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/F4' -r
