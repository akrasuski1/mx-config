#!/usr/bin/env bash

set -e

trap 'jobs -p | xargs kill 2>/dev/null' TERM INT EXIT


FILE=/tmp/xfconf-listener-file
rm -rf $FILE

for channel in $(xfconf-query -l | tail +2)
do
	echo $channel
	xfconf-query -c $channel -m | stdbuf -o0 sed "s/^set: \\(.*\\)$/xfconf-query -c $channel -p '\\1'/" >> $FILE &
done

tail -f $FILE
