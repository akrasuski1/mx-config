#!/usr/bin/env bash

set -e

pkill xscreensaver || true
sudo apt remove xscreensaver -y
sudo apt install light-locker -y
cp ../helpers/xscreensaver.desktop ~/.config/autostart
