#!/bin/sh

rm -r Folder12

mkdir Folder12

cp *.sh   /Users/admin/Folder12

find . -type f -perm -600 -path '*Folder12*/*' -name "*.sh" -exec rename 's/\.sh$/.copy/' '{}' \;



