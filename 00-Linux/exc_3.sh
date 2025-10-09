#!/bin/bash

TEXT=''

if [[ $# -eq 0 ]]; then
  TEXT='Que me gusta la bash!!!!'
fi

mkdir -p foo/{dummy,empty} && touch foo/dummy/file{1,2}.txt
if [ -z "$TEXT" ]; then
  echo "$1" > ./foo/dummy/file1.txt
else
  echo "$TEXT" > ./foo/dummy/file1.txt
fi


cp ./foo/dummy/file1.txt ./foo/dummy/file2.txt && mv ./foo/dummy/file2.txt ./foo/empty
