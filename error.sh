#!/bin/bash

error () {
   blabla
   return 0
}

error
echo "The exit status of the error function is: $?"
