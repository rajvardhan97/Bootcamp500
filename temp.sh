echo "Press 1 to Convert Celsius temperature into Fahrenheit"
echo "Press 2 to Convert Fahrenheit temperatures into Celsius"
read choice

case "$choice" in

$choice -eq 1)
	echo -n "Enter temperature (C) : "
	read c
	f=$(echo "scale=2;((9/5) * $c) + 32" |bc)
	echo "$c C = $f F" ;;

$choice -eq 2)
	echo -n "Enter temperature (F) : "
	read f
	c=$(echo "scale=2;(5/9)*($f-32)"|bc)
	echo "$f F= $c C"  ;;
esac
