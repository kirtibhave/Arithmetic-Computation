#!/bin/bash 
echo "**********Welcome to arithmetic computation & sorting**********"

declare -A DictResult
declare -a ArrayResult

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

DictResult[1]="$result1"
DictResult[2]="$result2"
DictResult[3]="$result3"
DictResult[4]="$result4"

echo "Dictionary values are:${DictResult[@]}"
echo "Dictionary keys are:${!DictResult[@]}"

for (( i=1;i<=4;i++ ))
do
	ArrayResult[i]=${DictResult[$i]}
done
	echo "Array result is:${ArrayResult[@]}"








