#!/bin/bash

dir=$1;

sips -Z 1000 $dir/*;
sips -Z 400 $dir/preview.*;
