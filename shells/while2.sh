#!/bin/bash

row=$1

while [[ 10 -gt $row ]]; do
  echo $row
  row=`echo $row+1 | bc`
done
