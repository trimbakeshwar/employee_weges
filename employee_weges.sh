#!/bin/bash -x
echo "welcome to the employee weges"
function check_attendance(){
attendance=$((RANDOM%3))
case $attendance in
1)
	echo "1" ;;
2)
	echo "2" ;;
0)
	echo "0" ;;
esac
}
#result="$( check_attendance $(()) )"
function check_daily_weges(){
result="$( check_attendance $(()) )"
case $result in 
1)
	total_weges=$((20*8))
	echo $total_weges ;;
2)
	total_weges=$((20*4))
	echo $total_weges ;;
esac
}
#result="$( check_daily_weges $(()) )"
function calculate_weges_for_month(){
count=0
total_sal=1
while [ $count -le 20 ]
do
	result="$( check_daily_weges $(()) )"
	total_sal=$(( $total_sal + result ))
	((count++))
	
done
	echo "$total_sal"
}
calculate_weges_for_month
