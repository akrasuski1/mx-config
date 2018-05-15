#!/usr/bin/env bash

set -e

mkdir -p ~/bin
cp  ../helpers/{extrawm,monitor_extend_left} ~/bin
chmod +x ~/bin/{extrawm,monitor_extend_left}

grep 'PATH:~/bin' ~/.bashrc || echo 'PATH=$PATH:~/bin' >> ~/.bashrc
