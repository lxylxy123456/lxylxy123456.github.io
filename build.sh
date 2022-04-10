#!/bin/bash

set -xe
[ -d docs ]
rm -rf docs
pushd src
make clean
mkdir ../docs
ln -s ../../docs _build/html
make html
popd
cp *.html live.sh docs
touch docs/.nojekyll

