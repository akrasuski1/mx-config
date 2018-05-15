#!/usr/bin/env bash

set -e

pkill clipit || true
sudo apt remove clipit -y
cp ../helpers/clipit-startup.desktop ~/.config/autostart
