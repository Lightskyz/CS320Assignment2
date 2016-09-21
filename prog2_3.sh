#!/bin/bash

echo "Assignment #2-3, Antoine Rakotozafy, antoine.rakotozafy@gmail.com"
echo ""

#Add a line in each C files : #include <stdlib.c> to avoid the warning message when we compile them
sed -i '2i#include <stdlib.h>' *.c

#Compiler les fichiers c
gcc $1 -o prog1 -lm
gcc $2 -o prog2 -lm
gcc $3 -o prog3 -lm
gcc $4 -o prog4 -lm

#Execute each program with a known value
prog1Test=$(echo `./prog1 9`)
prog2Test=$(echo `./prog2 9`)
prog3Test=$(echo `./prog3 9`)
prog4Test=$(echo `./prog4 9`)

#Assignement 1 (result 0.988)
if [ "$prog1Test" == "0.988" ]
then
  echo $1 "Assignment #1"
elif [ "$prog2Test" == "0.988" ]
then
  echo $2 "Assignment #1"
elif [ "$prog3Test" == "0.988" ]
then
  echo $3 "Assignement #1"
elif [ "$prog4Test" == "0.988" ]
then
  echo $4 "Assignement #1"
fi

#Assignement 2 (result 3.0000)
if [ "$prog1Test" == "3.0000" ]
then
  echo $1 "Assignment #2"
elif [ "$prog2Test" == "3.0000" ]
then
  echo $2 "Assignment #2"
elif [ "$prog3Test" == "3.0000" ]
then
  echo $3 "Assignement #2"
elif [ "$prog4Test" == "3.0000" ]
then
  echo $4 "Assignement #2"
fi

#Assignement 3 (result : 0.90000 )
if [ "$prog1Test" == "0.90000" ]
then
  echo $1 "Assignment #3"
elif [ "$prog2Test" == "0.90000" ]
then
  echo $2 "Assignment #3"
elif [ "$prog3Test" == "0.90000" ]
then
  echo $3 "Assignement #3"
elif [ "$prog4Test" == "0.90000" ]
then
  echo $4 "Assignement #3"
fi

#Assignement 4 (not the same as 1,2 and 3)
if [[ "$prog1Test" != "0.988" && "$prog1Test" != "3.0000" && "$prog1Test" != "0.90000" ]]
then
  echo $1 "Assignement #4"
elif [[ "$prog2Test" != "0.988" && "$prog2Test" != "3.0000" && "$prog2Test" != "0.90000" ]]
then
  echo $2 "Assignement #4"
elif [[ "$prog3Test" != "0.988" && "$prog3Test" != "3.0000" && "$prog3Test" != "0.90000"  ]]
then
  echo $3 "Assignement #4"
elif [[ "$prog4Test" != "0.988" && "$prog4Test" != "3.0000" && "$prog4Test" != "0.90000" ]]
then
  echo $4 "Assignement #4"
fi
