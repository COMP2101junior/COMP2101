#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label
#######################################################################################
#request user to enter numbers
echo "enter first number"
read firstnum
echo "enter second number"
read secondnum
echo "enter a third number"
read thirdnum
#######################################################################################
#arithmetic calculations
sum=$((firstnum + secondnum + thirdnum))
product=$((firstnum*secondnum*thirdnum))
remainder=$((firstnum % secondnum))
dividend=$(( firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")
cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum mult $secondnum mult $thirdnum is $product
$firstnum divided by $secondnum is $dividend with remainder $remainder
 - More precisely, it is $fpdividend

EOF
