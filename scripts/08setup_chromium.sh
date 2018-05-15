#!/usr/bin/env bash

set -e

sudo apt install chromium -y
sed -i 's/^WebBrowser=.*$/WebBrowser=chromium/' ~/.config/xfce4/helpers.rc
