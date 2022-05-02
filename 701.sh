for ((i=1; i<=10; i++))
do
	a=$(($RANDOM%100))
	arr+=($a)
	echo "rno= $a"
done

echo "array is : " ${arr[@]}
first=${arr[0]}
second=${arr[0]}

for ((i=0; i<11; i++))
do
        if [ $first -lt ${arr[i]} ]
	then
            $second = $first
            $first = ${arr[i]}

	else [ ${arr[i]} -gt $second || ${arr[i]} -ne $first ]
            $second = ${arr[i]}
        fi
done

    if [ $second -eq $first ]
        then
	echo "There is no second largest element\n"
    else
        echo "The Second largest element in the array is:" $second
   fi
