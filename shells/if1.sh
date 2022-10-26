#!/bin/bash

echo "File name:$0"
echo "Parameter count:$#"
echo "All Parameters:$@"
if [ "$1" =  ok ]; then
	echo "good~!!"
	echo "good~!!"
else
	echo "bad~!!"
fi
