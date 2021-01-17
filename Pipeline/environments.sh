#!/bin/bash

for dir in src/environments/*; do
    for f in $dir/dist/*.dist; do
        baseName=`echo $(basename $f) | rev | cut -d'.' -f2-  | rev`
        cp $f $dir/$baseName
    done
done
