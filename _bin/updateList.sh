#!/bin/bash
prefix=$1

listEntry()
{
    path=$1
    modelName="$(echo $(basename $path) | sed -e "s/_/ /g")"
    echo "- [<img src=\"$prefix/$path/render.jpg\" height=\"110\">]($prefix/$path/page.md) [$modelName]($prefix/$path/page.md)"
}

process()
{
    typeName=$1
    if [ -f $typeName.header.md ]
    then
        cat $typeName.header.md > ../$typeName.md
    else
        echo -n "" > ../$typeName.md
    fi

    for path in $(cat $typeName.list)
    do
        listEntry $path >> ../$typeName.md
    done
}

for file in *.list
do
    typeName="$(basename $file .list)"
    process $typeName
done
