#!/bin/sh

filesdir=$1
searchstr=$2

# check missing arguments
if [ -z "$filesdir" ] || [ -z "$searchstr" ]; then
  echo "Error: missing arguments"
  exit 1
fi

# check if filesdir is a directory
if [ ! -d "$filesdir" ]; then
  echo "Error: $filesdir is not a directory"
  exit 1
fi

X=$(find "$filesdir" -type f 2>/dev/null | wc -l)

Y=$(grep -R -- "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"

