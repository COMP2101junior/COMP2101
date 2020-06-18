#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:

echo "Two pairs of dice are rolled"
#  put the number of sides in a variable which is used as the range for the random number
diceSide=6
#  put the bias, or minimum value for the generated number in another variable
averageValue=1
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias
echo "Rolling..."
die1=$(( RANDOM % diceSide + averageValue))
die2=$(( RANDOM % diceSide + averageValue))

echo "Rolled $die1, $die2"

# rolled results are displayed

echo "The results are: $die1, $die2"

# Task 2:
#  generate the sum of the dice
dieSum=$(($die1 + $die2))
#  generate the average of the dice
dieAvg=$(($dieSum / 2))

#  display a summary of what was rolled, and what the results of your arithmetic were
echo "The sum of dice is: $dieSum "
echo "Total average is: $dieAvg"
