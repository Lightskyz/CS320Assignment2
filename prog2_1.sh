#!/bin/bash

echo "Assignment #2-1, Antoine Rakotozafy, antoine.rakotozafy@gmail.com"
echo ""

#Unzip the grades and the logins files
gunzip $1 | unzip -q $2 && rm $2

#Remove the extension of the file
grade=$(echo $1 | cut -d "." -f1)
login=$(echo $2 | cut -d "." -f1)

#Easy version because there is only one student who has 100 for all the assignements
while read line
do
   nameGrade=$( awk -F ',' '$3==100 && $4==100 && $5==100 { print $1, $2 } ')
   echo $nameGrade
   echo ""
done < $grade

#Read all the lines and get the username of the student who has 100 everywhere
while read line
do
    username=$( awk -v name="$nameGrade" -F ',' '$1==name { print $2 } ')
    echo $username
    echo ""
done < $login

#Read all the lines and get the password of the student who has 100 everywhere
while read line
do
  password=$( awk -v name="$nameGrade" -F ',' '$1==name { print $3 } ')
  echo $password
done < $login

#Remove the grade and login files
rm $grade
rm $login
