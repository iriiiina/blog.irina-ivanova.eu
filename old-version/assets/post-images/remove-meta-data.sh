#!/bin/bash

dir=$1;

find $dir -type f -name "*" |\
  while read FILENAME
  do
    exiftool -all= -overwrite_original_in_place "${FILENAME}";
  done
