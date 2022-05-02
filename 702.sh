for ((i=0; i<10; i++))
do
        a=$(($RANDOM%100))
        arr+=($a)
        echo "rno= $a"
done

echo "array is : " ${arr[@]}


for ((x=0; x<10; x++))
do
	for ((y=$x; y<10; y++))
	do
		if [ ${arr[x]} -gt ${arr[y]} ]
		then
			$temp=${arr[x]}
			${arr[x]}=${arr[y]}
			${arr[x]}=$temp
		fi
	done
done

echo "Array after sorting: "
for ((j=0; j<10; j++))
do
	echo ${arr[j]}
done
echo "2nd largest " ${arr[1]}
echo "2nd smallest " ${arr[8]}
