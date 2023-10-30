#!/bin/bash
file count = 0
for file in $(find. -type f -maxdepth 1);do
if[(-r $file)|(w $file)];then
file Count=$(file Count +1)
fi
done
