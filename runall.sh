#!/usr/bin/env bash

mkdir -p build

for FILE in $(find scripts/*)
do
	FILE=$(basename $FILE)
	echo -n "$FILE... "
	if [ -f build/$FILE.done ]
	then
		tput setaf 2
		echo "done earlier, skipping."
		tput sgr0
		continue
	fi
	if [ -f build/$FILE.ignore ]
	then
		tput setaf 3
		echo "ignored, skipping."
		tput sgr0
		continue
	fi
	(cd scripts && bash $FILE > ../build/$FILE.output 2>&1)
	if [ $? -eq 0 ]
	then
		touch build/$FILE.done
		tput setaf 2
		echo "OK."
		tput sgr0
	else
		tput setaf 1
		echo -n "failed."
		tput sgr0
		echo " Output saved to build/$FILE.output."
		read -p "Ignore and go on? [y/N] " yn
		case $yn in
			[Yy]* ) touch build/$FILE.ignore;;
			* ) exit 1;;
		esac
	fi
done

echo
echo All done or skipped.
echo Logout and log in again to see all changes.
