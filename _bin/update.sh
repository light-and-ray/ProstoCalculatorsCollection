#!/bin/bash

listEntry()
{
    path=$1
    modelName="$(echo $(basename $path) | sed -e "s/_/ /g")"
    echo "- [<img src=\"../$path/render.jpg\" height=\"100\"> $modelName](../$path/page.md)"
}

process()
{
    file=$1
    echo -n "" > ../$file.md
    for path in $(cat $file)
    do
        listEntry $path >> ../$file.md
    done
}

for file in *
do
    process $file
done
