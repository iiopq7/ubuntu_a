#!/bin/bash

a=0
b=0

echo -n "man : "
read a

echo -n "woman : "
read b

if [ $a -lt $b ]
then
	echo woman : $b
else
        echo man : $a
fi
