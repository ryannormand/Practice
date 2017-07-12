#!/bin/bash

#set the integer typed directly after file name as the MAX variable
MAX=$1

#make sure that the user has actually set an input value... if not then exit script. Check man test for mor info on if statement conditionals
if [ -z $1 ]
then
  printf "This program checks to see what numbers the input is divisible by.\nIf the input is prime, then the output will say it is prime.\nPlease enter an integer value after the filename so the program can run."
  exit
fi

#Initialize a boolean variable to check if the number is prime
PRIME=1

#Run through list of ints that leads up to MAX. If the remainder == 0, then say that the number is divisible.
for n in $(seq 2 1 $((${MAX}-1)))
do
  REM=$((${MAX}%${n}))
  if [ ${REM} -eq 0 ]
  then
    PRIME=0
    QUOT=$((${MAX}/${n}))
    echo "${MAX} is divisible by ${n}... ${MAX}/${n}=${QUOT}"
  fi
done

#If none of the numbers in the seq were divisible, then PRIME is still == 1, otherwise it will have been set to 0
if [ ${PRIME} -eq 1 ]
then
  echo "${MAX} is a prime number"
fi

