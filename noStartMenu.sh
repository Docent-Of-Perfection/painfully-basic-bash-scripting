#!/bin/bash
#I guess this is my life now

program=$1

if [ -z $program ] 
then
echo "wyd?"
read program
fi

nohup ${program} & >> /dev/null
sleep 1
#There's probably a better way to do this.
rm nohup.out
