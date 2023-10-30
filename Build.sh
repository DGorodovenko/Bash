#!/bin/bash

firstline=$(head -n 1 source/changelog.md)

read -a splitfirstline <<< $firstline

version=${splitfirstline[1]}
echo "You are " $version

echo "Enter 1"
read one 
if [ $one -eq 1 ] 
  then 
      echo "OK"
      for filename in source/*
      do
        echo $filename
        if [ $filename == "source/secretinfo.md" ]
        then 
          echo "Not copying" $filename 
        else
          echo "Copying" $filname
          cp $filename build 
        fi
      done
else
  echo "Please come back when you are ready"
fi

cd build
echo "Build version $version contains:"
ls
# We'll add more code here later
cd ..
