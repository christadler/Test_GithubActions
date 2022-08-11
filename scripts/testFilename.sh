#!/bin/bash

IFS=";"
for file in $1; do
            echo "$file was changed"
            if [[ $file == *.ipynb ]]
            then
              # clear output on all .ipynb files for diff'ing 
              echo "$file is an ipynb file"
              #jupyter nbconvert --to notebook --ClearOutputPreprocessor.enabled=True $file
              if [[ $file == *solution.ipynb ]]
              then
                # execute solutions files inplace
                echo "$file is an solution file"
               # jupyter nbconvert --to notebook --execute -inplace $file
              fi
            else
              echo "$file is not an ipynb file"
            fi
          done

