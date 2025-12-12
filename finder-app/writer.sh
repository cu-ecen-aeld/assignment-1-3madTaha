#!/bin/sh

writefile=$1
writestr=$2

# check missing arguments
if [ -z "$writefile" ] || [ -z "$writestr" ]; then
  echo "Error: missing arguments"
  exit 1
fi

# create directory path if it doesn't exist
dirpath=$(dirname "$writefile")
mkdir -p "$dirpath"

# write (overwrite) the file
echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
  echo "Error: could not create/write file $writefile"
  exit 1
fi
