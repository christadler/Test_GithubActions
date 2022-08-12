#!/bin/bash

OIFS="$IFS";

IFS=$'\n';

#for file in $(grep -rnl -E '/krischer/' .); 
for file in $(grep -rnl -E '/master"' html ); 
do
	echo "working on: $file";

	#sed -i "s/krischer/seismo-live/g" "$file" ;
	sed -i "s/master\"/HEAD?urlpath=%2Ftree%2F\"/g" "$file" ;
	
	#read line;
done

IFS="$OIFS";
