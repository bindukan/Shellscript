#!/bin/bash
i=0
while read line
do
    f1[$i]="$line"
    let i++
done <$1

i=0
while read line
do
    f2[$i]="$line"
    let i++
done <$2

i=0
while [[ "${f1[$i]}" ]]
do
    echo ${f1[$i]} ${f2[$i]}
    let i++
done


#created two file; cat file1  cat file2 
#                     f1 1    f2 Jan
#                     f1 2    f2 Feb
#		      f1 3    f2 Mar
#                     f1 4    f2 Apr
#	              f1 5    f2 May
