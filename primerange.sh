echo "enter a number upto which you want the prime numbers"
read num
count=0
for (( n=2; n<=$num; n++ ))
do

t=1

for (( i=2; i<$n; i++ ))
do

        if (($n%i==0))
        then
        t=0
        break;
        fi
done
        if [ $t == 1 ]
        then
        echo "$n is a prime number"
        fi
done
