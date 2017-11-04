#!/bin/bash
#Now in /usr/bin/vol
 
volume=$1

if [ -z "$volume"]
then
echo "please enter a volume on a scale of 1-10"
read volume
fi

amixer -D pulse sset Master ${volume}0%
echo "Volume set to ${volume}0%"
