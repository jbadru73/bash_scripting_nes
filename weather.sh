#!/bin/bash

TEMP=$1

if [ $TEMP -gt 5 ]; then
   if [ $TEMP -lt 15 ]; then
      echo "The weather is cold."
   elif [ $TEMP -lt 25 ]; then
	echo "The weather is nice."
   else
	echo "The weather is hot."
   fi
else
   echo "It's Freezing outside ..."
fi
