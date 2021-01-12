#! /bin/bash

array=("ls -l" "d*")

echo $PWD

for i in ${array[*]};do
	echo "$i"
done
