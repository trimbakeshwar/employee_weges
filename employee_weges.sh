#!/bin/bash 
echo "welcome to the employee weges"
function check_attendance(){
attendance=$((RANDOM%2))
if [ $attendance -eq 1 ]
then
	echo "1"
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
else
	echo "employee is absent"
fi

}
check_daily_weges
