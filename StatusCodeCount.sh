#!/bin/bash


filepath=/var/log/nginx/access.log
# Assuming status codes are in default nginx log directory.

cat $filepath | cut -d '"' -f3 | cut -d ' ' -f2 | sort | uniq -c | sort -rn



#  Method2: 

# If file location is dynamic then we can pass as an input.

#echo -n "location of the file : "
#read filepath
#cat $filepath | cut -d '"' -f3 | cut -d ' ' -f2 | sort | uniq -c | sort -rn
