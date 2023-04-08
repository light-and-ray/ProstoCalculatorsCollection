#!/bin/bash
set -e
updateList="$(realpath _bin/updateList.sh)"


echo -n "" > _fullList/fullList
for calculator in calculators/*
do
    echo "$calculator" >> _fullList/fullList
done
cd _fullList/
bash "$updateList" "."
cd - > /dev/null



cd byBrand/_lists/
bash "$updateList" ".."
cd - > /dev/null

cd byType/_lists/
bash "$updateList" ".."
cd - > /dev/null

cd byDisplay/_lists/
bash "$updateList" ".."
cd - > /dev/null
