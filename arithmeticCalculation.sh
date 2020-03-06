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

DictResult[1]="$result1"
DictResult[2]="$result2"
DictResult[3]="$result3"
DictResult[4]="$result4"

for ((i=0;i<=4;i++))
do
	ArrayResult[i]=${DictResult[$i]}
done
	echo "Array result is:" ${ArrayResult[@]}

len=${#ArrayResult[@]}
for((i=1;i<$len;i++))
do
    for((j=i+1;j<=$len;j++))
     do
       if [[ ${ArrayResult[i]%.*} -lt ${ArrayResult[j]%.*} ]]
       then
             temp=${ArrayResult[$i]}
             ArrayResult[i]=${ArrayResult[$j]}
            ArrayResult[j]=$temp
        fi
    done
done
echo "descending order:" ${ArrayResult[@]}


