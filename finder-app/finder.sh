#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -ne 2 ]
then
	echo "Not enough paramters"
	exit 1
fi

#echo $filesdir
#echo $searchstr

if [ ! -d $filesdir ]
then
	echo "Not a directory"
       	exit 1
#else       
#	echo "Valid directory"
fi

numfiles=`ls -A $filesdir | grep -c ""`
numlines=`grep $searchstr -r $filesdir/* | grep -c ""`

echo "The number of files are $numfiles and the number of matching lines are $numlines"
