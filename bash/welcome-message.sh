#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
title="Overlord"
USER="Junior"
hostname="myhostname"

###############
Date and time commands
day=$(date +%A)
hour=$(date +%I)
minute=$(date +%M)
meridian=$(date +%p)
echo "It is a $day at $hour:$minute $meridian"
###############
#each title is displayed with titles
if [ $day == "Monday" ]
then
  title="Monday will be fantastic"
elif [ $day == "Tuesday" ]
then
  title="Tuesdy might be boring"
elif [ $day == "Wednesdy" ]
then
  title=" Wednesdy will be warm "
elif [ $day == "THursday" ]
then
  title="Thursday might be holiday"
elif [ $day == "Friday" ]
then
  title="Friday might be humid"
elif [ $day == "Saturday" ]
then
  title="Saturday might be hot"
else
  title="Sunday might be unlucky"

fi
########################################
cat <<EOF

Welcome to planet $hostname, "$title $USER!"

EOF
