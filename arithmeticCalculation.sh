#!/bin/bash -x
echo "**********Welcome to arithmetic computation & sorting**********"

read -p  "enter first number" number1
read -p  "enter second  number" number2
read -p  "enter third  number" number3

result=`echo "scale=2; $number1+$number2*$number3" | bc`
echo "Result is: $result"
