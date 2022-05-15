#!/bin/bash

AGE=$1

if [ $AGE -lt 13 ]; then
    echo "You are a Kid."
elif [ $AGE -lt 20 ]; then
    echo "You are a teenager."
elif [ $AGE -lt 65 ]; then
    echo "You are an adult." 
else
    echo "You are an elder."
fi

