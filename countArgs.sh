#!/bin/bash
E_WRONG_ARGS=85
params="-a -b -c -d"
#placeholder parameters

# The value of $# holds the number of arguments passed
# -ne is 'numeric inequality'
if [ $# -ne 2 ]
then
	echo "Usage: 'countArgs' $params"
# 'basename $0' is the script's filename.
	exit $E_WRONG_ARGS
fi
