#!/bin/bash
set -ex

update="$(realpath _bin/update.sh)"

cd byBrand/_lists/
bash "$update"
cd -

cd byType/_lists/
bash "$update"
cd -

cd byDisplay/_lists/
bash "$update"
cd -
