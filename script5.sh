#!/bin/bash

counter() {
	for file in "$1"/*; do
		fullFilename=${file##*/}
		withoutExtension=`echo "$fullFilename" | cut -d'.' -f1`
		if [ "${#withoutExtension}" -ge 3 ]; then 
			echo "$fullFilename"
		fi
		if [ -d "$file" ]; then
	     		counter "$file"
		fi
	done
}

counter "$1"

