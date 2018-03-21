#!/bin/bash
COMMANDS=[w,uptime,date]
for cmd in $COMMANDS
do
echo $cmd + "is being appended"
 $cmd >> log2
done
echo "completed loop"
