#!/bin/bash
#
# curlswf.sh swf-url string 
# or
# curlswf.sh swf-url
#
# Version 0.1 Copyright (C) 2007 aciid91@gmail.com
# Licensed under GNU GPL http://www.gnu.org/licenses/gpl.txt




ARGS=2 


if [ $# -lt "$ARGS" ] 
then 
clear 
echo No search specified, will only curl and reveal. 
curl -s $1 | strings -a 
exit 
fi 


echo SWF file link $1 
echo Searching for $2 
curl -s $1 | strings -a | grep $2 
