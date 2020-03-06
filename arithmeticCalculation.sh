#!/bin/bash -x
echo "**********Welcome to arithmetic computation & sorting**********"

read -p  "enter first number" number1
read -p  "enter second  number" number2
read -p  "enter third  number" number3

firstOpeartionResult=`echo "scale=2; $number1+$number2*$number3" | bc`
secondOperationResult=`echo "scale=2; $number1*$number2+$number3" | bc`
thirdOperationResult=`echo "scale=2; $number3+$number1/$number2" | bc`

echo "Result of first arithmetic operation is: $firstOpeartionResult"
echo "Result of second arithmetic opeartion is: $secondOperationResult"
echo "Result of third arithmetic opeartion is: $thirdOperationResult"
