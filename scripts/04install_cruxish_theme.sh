#!/usr/bin/env bash

set -e

sudo apt install xfwm4-themes

xfconf-query -c xfwm4 -p '/general/theme' -s Cruxish
