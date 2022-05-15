#!/bin/bash

counter=1

function recur() {
        echo "Hello, Friend!"
	if [ $counter -eq 10 ]; then
		exit 1
	fi
	counter=$(($counter+1))
	recur
}

recur
