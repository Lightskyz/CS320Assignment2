#!/bin/bash

echo "Assignment #2-2, Antoine Rakotozafy, antoine.rakotozafy@gmail.com"
echo ""

#Root directory
root=$(echo $1)

#Current directory
current=$(pwd)

#Move all the c files inside the current directory
cp $(grep -rlwn $root -e "#include <stdio.h>") $current

#Read all the files without extension and add .c at the end
find $current -maxdepth 1 -type f -not -name "*.*" -exec mv "{}" "{}".c \;

#Echo all the C files insides the current directory
find $current -type f -name \*.c -exec basename {} \;
