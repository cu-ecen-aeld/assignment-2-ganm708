#!/bin/bash
filesdir="$1"
searchstr="$2"

#verify 2 arguments
if [ "$#" -ne 2 ];
then	
    echo "parameter not specified."
    exit 1
fi

#check directory

if [ ! -d "$1" ];
then
    echo "Direcotry not present"
    exit 1
fi

#file count
file_cnt=$(find "$1" -type f | wc -l )

#macth string

match_string=$(grep -r "$2" "$1" | wc -l )

echo "The number of files are $file_cnt and the number of matching lines are $match_string"




