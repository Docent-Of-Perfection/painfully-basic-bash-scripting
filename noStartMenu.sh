#!/bin/bash

program=$1

if [ -z $program ]
then
echo "Enter program to start"
read program
fi

nohup ${program} >/dev/null 2>&1 &
