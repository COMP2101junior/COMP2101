#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "rolling 6 times since i have 6 letters in my first name"
echo "
Rolling...
$(( RANDOM % 6 + 1))-J
$(( RANDOM % 6 + 1))-U
$(( RANDOM % 6 + 1))-N
$(( RANDOM % 6 + 1))-I
$(( RANDOM % 6 + 1))-O
$(( RANDOM % 6 + 1))-R
"
