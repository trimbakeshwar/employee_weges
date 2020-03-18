#!/bin/bash -x
echo "welcome to the employee weges"
function check_attendance(){
attendance=$((RANDOM%3))
if [ $attendance -eq 1 ]
then
	echo "1"
elif [ $attendance -eq 2 ]
then
	echo "2"
else
	echo "0"
fi
}
result="$( check_attendance $(()) )"
function check_daily_weges(){

if [ $result -eq 1 ]
then
	total_weges=$((20*8))
	echo $total_weges
elif [ $result -eq 2 ]
then
	total_weges=$((20*4))
	echo $total_weges
else
	echo "employee is absent"
fi
}
check_daily_weges
