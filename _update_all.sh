#!/bin/bash
set -e

update="$(realpath _bin/update.sh)"

cd byBrand/_lists/
bash "$update"
cd - > /dev/null

cd byType/_lists/
bash "$update"
cd - > /dev/null

cd byDisplay/_lists/
bash "$update"
cd - > /dev/null
