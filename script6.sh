#!/bin/bash

counter() {
    for file in "$1"/* 
    do 
	if [ -d "$file" ]; then 
	        echo "$file"
                counter "$file"
	elif [ -f "$file" ]; then
	       	echo "$file"
	fi
    done
}

counter "$1"
