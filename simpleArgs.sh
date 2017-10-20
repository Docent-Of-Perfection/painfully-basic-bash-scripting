#!/bin/bash
#below is first argument called after scriptname
location=$1
filename=$2

if [ -z "$location" ]
then 
	echo "please provide location argument"
	exit 0
fi

if [ -z "$filename" ]
then
	echo "please provide a filename"
	exit 0
fi

ls $location >> $filename
echo "Script is complete and has indexed the $location"
echo "###########################"
echo "Displaying contents of our $filename"
echo "###########################"
cat $filename
