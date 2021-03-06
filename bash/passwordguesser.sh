#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
echo "enter the password"
#input is captured
read myString
referenceString="password"

# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
if [ $myString == $referenceString ]

then
    echo "password matching"
else
    echo " password not matching"
  fi


# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)
###################################
echo "enter the password second attempt"
read myString

if [ $myString == $referenceString ]

then
    echo "Password matching on second attempt"
else
    echo  "password not  matching on second attempt"
#############################
echo "enter the password third attempt"
read myString
if [ $myString == $referenceString ]
then
  echo "Password matching on third attempt"
else
  echo "password not matching, on third attempt"
####################################
echo "enter the password fourth attempt"
read myString
if [ $myString == $referenceString ]
then
  echo "Password matching on fourth attempt"
else
  echo "password not  matching on fourth attempt"
  ##################################
  echo "enter the password fifth attempt"
  read myString
if [ $myString == $referenceString ]
  then
    echo "Password matching on fifth attempt"
  else
    echo "password not  matching on fifth attempt "
    echo "try after some time"
fi
fi
fi
fi
