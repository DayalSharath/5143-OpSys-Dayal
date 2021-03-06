#------------------------------------------------------ ---- Script Name: versionb.sh----------------------------------------------#
#------------------------------------------------------------Owner: Sharath Kumar Dayal--------------------------------------------#
#---------This script will take a file as input and create a dated copy of the file but date is after the name of the file---------#

#!/bin/bash

file=$1
if [ -e $file ]                              #Checking if the input file exists
then
now=$(date +"%Y-%m-%d")                      #Assigning present date into a variable
e=$(echo ${file}|awk -F\. '{print $2}')      #Storing the extension of the file into a variable
f=$(echo ${file%*.*}_"$now"."$e")            #Creating a new file as filename followed by date and extension of the file
cp $file $f                                  #Copying the contents of input file to new file

#if the file does nto exist
else
echo "file doesnot exist so creating a new file and dated copy"

#Creating a new empty file and creating a dated copy
touch $file
now=$(date +"%Y-%m-%d")
e=$(echo ${file}|awk -F\. '{print $2}')
f=$(echo ${file%*.*}_"$now"."$e")
cp $file $f
fi

