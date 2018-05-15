#!/usr/bin/env bash

set -e

if [ ! -f ~/.vimrc ]
then
	cp ../helpers/vimrc ~/.vimrc
fi
