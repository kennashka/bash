#!/bin/bash


########################################################################################################
#Author: Kennashka DeSilva
#mail@kennashka.com
#2020
########################################################################################################








for f in /source/project/*.fileextension
do
   echo "***** [Start $f ] ****"
   cat -n "$f"
   echo "***** [End $f ] ****"
done