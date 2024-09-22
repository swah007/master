#!/bin/bash 

VAR_1=$(hostname)

echo "last code exit value : $?"

echo "hostname : $VAR_1"

if [ "VAR_1" = "SANDEEP" ]
then 
	echo "On Correct host"
else
	echo "on wrong host"
fi

echo ";testing && "
mkdir ./Document/test && touch newFile.txt
echo "exit code: $?"

echo "testing ||"

mkdir ./Document/test || touch newFile.txt

echo "exit code from || or : $?"

input()
{
	read -p "enter number" VAR  
	return $VAR
}

#Function 
function sum()
{
	input
	VAR_1=$?
	read -p "Enter second number : " VAR_2
	TOTAL=[$VAR_1+$VAR_2]
	echo "Sum of $VAR_1 + $VAR_2 = ${TOTAL} "
}

sum


