#!/usr/bin/env bash

set -e

if [ ! -f ~/.vimrc ]
then
	cp ../files/.vimrc ~/.vimrc
fi
