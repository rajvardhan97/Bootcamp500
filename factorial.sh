read -p "Enter a number" n
f=1

for (( i=2; i<=$n; i++))
{
  f=$((f*i))
}

echo $f
