#!/bin/bash

echo "Assignment #2-4, Antoine Rakotozafy, antoine.rakotozafy@gmail.com"
echo ""
echo "I just add my name in comment in this file $1"

#Add my name to the C file I specify in argument
echo "#"$2 >> $1
