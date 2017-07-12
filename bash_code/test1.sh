#!/bin/bash

setterm -term linux -fore green 

for x in $(seq 0 1 4)
do
 y=$((x**2/5))
 printf "x=%.2f\ty=%f\n" $x $y
done

if [ $1 -gt 10 ]
 then
 echo "number is in double digits"
 else
 echo "${1} is not in the double digits!"
fi

setterm -term linux -fore black

