#!/bin/bash

for nb_dir in $(find ../notebooks/* -type d); 
do
	echo "working on: $nb_dir";

	# clear output on all files
	for nb_file in $(find $nb_dir/*.ipynb -maxdepth 1);
	do
		echo "nbFile: $nb_file";
		#jupyter nbconvert --to notebook --ClearOutputPreprocessor.enabled=True --inplace $nb_file;
	done

	# execute solution files
	for sol_file in $(find $nb_dir/*solution.ipynb);
        do
                echo "solFile: $sol_file";
                #jupyter nbconvert --to notebook --execute --inplace $sol_file;
        done
	 
	# make html-pages
	# Unfortunately this won't work
	# it would be nice and clean, but can't replace the python script
	# from Tobi and Lion
	#html_dir=$(echo ${nb_dir} | sed 's/notebooks/html/');
	#echo "html dir: $html_dir";
	#mkdir -pv $html_dir;
	# copy all none-ipynb-files
	#for other_file in $(find $nb_dir -maxdepth 1 -type f -not -name "*.ipynb");
	#do
	#	echo "otherFile: $other_file";
	#	#cp $other_file $html_dir;
	#done

	# convert all ipynb-files
	#for ipynb_file in $(find $nb_dir/*.ipynb -maxdepth 1);
	#do
	#	echo "ipynb_File: $ipynb_file";
		#jupyter nbconvert --to html --execute $ipynb_file --ExecutePreprocessor.kernel_name='python3' --output-dir $html_dir;
	#done

	echo "...moving to next directory...";
done
