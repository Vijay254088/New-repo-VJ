#!/bin/bash

echo "enter a prime number"
read "number"
if (( number / 1 == 0 )); then 
	echo "prime"
else
	echo "not even"
fi

