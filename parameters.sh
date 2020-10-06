#!/bin/bash

while getopts a:b:c: flag
do 
	case "${flag}"
	 in
        a) e=${OPTARG};;
        b) d=${OPTARG};;
        c) f=${OPTARG};;

esac
done

if [ $# -le 4 ]; then
   echo "error missing arguments"
   exit
else

echo "A $e";
echo "B $d";
echo "C $f";

fi

#note: run script as "./parameters.sh -b 110 -c 120 -a 100"



