#!/bin/bash

a=`ggrep -iPo '(?<=<LookupDir>)(.*)(?=</LookupDir>)' ~/config_1.xml`
b="</LookupDir>"
strindex() {
  x="${1%%$2*}"
  [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}
s=$(strindex "$a" "$b")   # prints 4

if [[ $s>-1 ]]
then
  echo "yes"
  echo $a | cut -c1-$s
else
  echo "no"
fi