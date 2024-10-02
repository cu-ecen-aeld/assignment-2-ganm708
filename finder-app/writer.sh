#!/bin/bash

writefile=$1
writestr=$2

#verify arguments
if [  $# -ne 2  ];
then
    echo "agr missing"
    exit 1
fi

#create directory
mkdir -p "$(dirname "$1")"


#content file

echo $2 > $1

#file created

if [ !  $?  -eq 0 ];
then
    exit 1
fi
