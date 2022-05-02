function pali()
{
s=0
rev=""
temp=$1

while [ $1 -gt 0 ]
do
	s=$(( $1 % 10 ))
	num=$(( $1 / 10 ))
	rev=$( echo ${rev} ${s} )
done

if [ $temp -eq $rev ];
then
	echo "Number is palindrome"
else
	echo "Number is NOT palindrome"
fi

}

read -p "Enter a number : " n
pali $n
