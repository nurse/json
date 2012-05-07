#!/bin/sh
# you should merge https://github.com/nurse/json/tree/fix-extconf before merging
dest=$1
if [ -z "$dest" -o ! -d "$dest" ]
then
  echo specify the directory to copy
  exit
fi
cp -R lib/* $dest/ext/json/lib
cp -R ext/json/ext/* $dest/ext/json
cp -R tests/* $dest/test/json
cd $dest/ext/json/lib/json/
rm -rf *.xpm pure* ext editor.rb add/rails.rb
