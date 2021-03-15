#!/bin/bash

# find all the files that we want to resize
fil_lst=`find . -name *.png -type f`
for fil in $fil_lst; do
    echo "Processing file: "$fil
    # make them 400px tall
    convert $fil -resize x400 ${fil}".resized"
    cp $fil ${fil}".old"
    cp ${fil}".resized" $fil
done;
