#!/bin/bash

for i in "$@"; do
	if [ -d "$i" ]; then
        	echo "$i is a directory"
  	elif [ -f "$i" ]; then
        	echo "$i is a file"
	else
		echo "$i is a another type"
	fi
 done

