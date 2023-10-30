#!/bin/bash

for directory in "$@"; do
	if [ -d $directory ]; then
	if [ ! -find $directory -type d ]; then
	if [ -find $directory -type f ]; then
	echo $directory
	fi
	fi
	fi
done
