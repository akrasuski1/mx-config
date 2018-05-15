#!/usr/bin/env bash

set -e

xfconf-query -c keyboards -p '/Default/KeyRepeat/Rate' -s 40 -n -t int
xfconf-query -c xfce4-session -p '/general/SaveOnExit' -s false -n -t bool
xfconf-query -c xfce4-power-manager -p '/xfce4-power-manager/lid-action-on-battery' -s 1 -n -t int
xfconf-query -c xfce4-power-manager -p '/xfce4-power-manager/logind-handle-lid-switch' -s true -n -t bool
xfconf-query -c xfce4-power-manager -p '/xfce4-power-manager/lid-action-on-ac' -s 1 -n -t int
xfconf-query -c xfce4-power-manager -p '/xfce4-power-manager/show-tray-icon' -s 1 -n -t int

xfconf-query -c xsettings -p '/Net/ThemeName' -s Arc-Dark -n -t string
xfconf-query -c xfwm4 -p '/general/button_layout' -s 'CMHS|O' -n -t string
xfconf-query -c xsettings -p '/Gtk/DecorationLayout' -s 'close,maximize,minimize:menu' -n -t string

xfconf-query -c xfce4-panel -p '/plugins/plugin-4/rows' -s 2 -n -t int # Workspace rows
xfconf-query -c xfce4-panel -p '/plugins/plugin-4/miniature-view' -s false -n -t bool

xfconf-query -c xfce4-desktop -p '/desktop-icons/single-click' -s false -n -t bool
xfconf-query -c thunar -p '/misc-single-click' -s false -n -t bool

xfconf-query -c xfwm4 -p '/general/raise_with_any_button' -s false -n -t bool

xfconf-query -c xfwm4 -p '/general/cycle_tabwin_mode' -s 1 -n -t int
xfconf-query -c xfwm4 -p '/general/cycle_draw_frame' -s true -n -t bool

# xfce-terminal:
sed -i '/^ScrollingOnOutput/d' ~/.config/xfce4/terminal/terminalrc
sed -i '/^ColorPalette=/d' ~/.config/xfce4/terminal/terminalrc
echo 'ScrollingOnOutput=FALSE' >> ~/.config/xfce4/terminal/terminalrc
# Tango color scheme.
echo 'ColorPalette=#000000;#cc0000;#4e9a06;#c4a000;#3465a4;#75507b;#06989a;#d3d7cf;#555753;#ef2929;#8ae234;#fce94f;#739fcf;#ad7fa8;#34e2e2;#eeeeec' >> ~/.config/xfce4/terminal/terminalrc
