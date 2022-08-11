#!/bin/bash


for file in $(find ../jupytext/ -type f -name '*.py'); 
do
	echo "working on: $file";

	nb_fn=$(echo ${file} | sed 's/jupytext/notebooks/');
	#echo "nb_fn: $nb_fn";

	# check every python file  
	if grep -q jupytext "$file";
	then
		echo "Jupytext   ";
		#echo "JupytextFile: $file";
	else
		echo "Python   ";
		cp $file $nb_fn;
	fi

	echo "   ";
done

