#!/bin/bash

# Check the exit status
printenv
some_directory=/Users/kgangaraju/lab/dir1
cd "$some_directory"
if [ "$?" = "0" ]; then
  rm *
else
  echo "Cannot change directory!" 1>&2
  exit 1
fi
