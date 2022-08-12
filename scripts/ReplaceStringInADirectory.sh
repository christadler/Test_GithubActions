#!/bin/bash

OIFS="$IFS";

IFS=$'\n';

for file in $(grep -rnl -E '/krischer/' .); 
do
	echo "working on: $file";

	sed -i "s/krischer/seismo-live/g" "$file" ;
	read line;
done

IFS="$OIFS";
