#!/bin/bash

rm *.txt
for z in *.zip; do
    unzip "$z";
    if [ -f *.java ]; then
	echo ${$z%.*}
	mkdir ${"$z"%.*}
	mv *.java
	mv *.txt
    fi
done

#for i in $(ls); do
     #echo item: $i
#done
