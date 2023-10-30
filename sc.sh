#!/bin/bash


for file in -exec $(find . -type f -maxdepth 1); do
                if [ -w "$file" ] || [ -r "$file" ]; then 
		count=$((count+1))
fi 

done      

echo "$count"




