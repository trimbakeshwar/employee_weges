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
result="$( check_attendance $(()) )"
function check_daily_weges(){
case $result in 
1)
	total_weges=$((20*8))
	echo $total_weges ;;
2)
	total_weges=$((20*4))
	echo $total_weges ;;
0)
	echo "employee is absent" ;;
esac
}
check_daily_weges
