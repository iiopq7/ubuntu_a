#!/bin/bash

count=1
cat test | while read line;
do
  echo "Line $count : $line"
  count=$[ $count + 1 ]
  #Let count+=1
  #`expr $count + 1`
done
echo "Finishing processing the file"
