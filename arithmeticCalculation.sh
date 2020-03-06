#!/bin/bash -x
echo "**********Welcome to arithmetic computation & sorting**********"

declare -A DictResult
read -p  "enter first number" number1
read -p  "enter second  number" number2
read -p  "enter third  number" number3

result1=`echo "scale=2; $number1+$number2*$number3" | bc`
result2=`echo "scale=2; $number1*$number2+$number3" | bc`
result3=`echo "scale=2; $number3+$number1/$number2" | bc`
result4=$( echo "scale=2; $number1%$number2+$number3 " | bc ) 

echo "Result of first arithmetic operation is: $result1"
echo "Result of second arithmetic opeartion is: $result2"
echo "Result of third arithmetic opeartion is: $result3"
echo "Result of fourth arithmetic opeartion is: $result4"

DictResult[first]="$result1"
DictResult[second]="$result2"
DictResult[three]="$result3"
DictResult[fourth]="$result4"

echo ${DictResult[@]}
echo ${!DictResult[@]}








