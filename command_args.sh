#--------------------------------------------------------- Script Name: command_args.sh------------------------------------------#
#-----------------------------------------------------------Owner: Sharath Kumar Dayal-------------------------------------------#
#----------------------This script is used to read in all command line arguments and print them out------------------------------#

#!/bin/sh
i=1
echo "File Name: $0"     #To display the filename/scriptname

#Passing requried number of arguments and i is used to display argument number 
for arg  in $*
do
echo  "argument:$i " $arg
i=$(($i+1))
done

#Displaying the count of number of arguments passed
echo "Total Number of arguments passed : $#"
