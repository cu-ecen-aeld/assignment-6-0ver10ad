#!/bin/bash

if [ $# -lt 2 ];then
	echo "insufficient parameters"
	exit 1
fi

filesdir=$1
searchstr=$2
if [ ! -d $filesdir ];then
	echo "${filesdir} is not a directory"
	exit 1
fi

X=`/bin/ls ${filesdir} |wc -w`
Y=`grep ${searchstr} -rn ${filesdir} | wc -l`
echo "The number of files are ${X} and the number of matching lines are ${Y}"

