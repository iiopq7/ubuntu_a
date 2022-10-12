#!/bin/bash

mn=0
wn=0

echo -n "man : "
read mn

echo -n "woman : "
read wn

if [ $mn -lt $wn ]
then
				echo woman : $wn
else
        echo man : $mn
fi
