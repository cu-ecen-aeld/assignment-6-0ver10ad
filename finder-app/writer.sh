#!/bin/bash

if [ $# -lt 2 ];then
	echo "insufficient parameters"
	exit 1
fi

writefile=$1
writestr=$2
writefiledir=$(dirname ${writefile})
if [ ! -d $writefiledir ];then
	mkdir -p $writefiledir
fi
echo ${writestr} > ${writefile}
if [ $? -ne 0 ];then
	echo "${writefile} can not be created"
	exit 1
fi

