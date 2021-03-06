#!/bin/bash
declare -A store
echo "welcome to the employee weges"


function check_attendance(){
attendance=$((RANDOM%2))
case $attendance in
1)
	echo "1" ;;

0)
	echo "0" ;;
esac
}


function getHours(){
result="$( check_attendance $(()) )"
if [ $result -eq 1 ]
then
	result1=$((RANDOM%2))
	case $result1 in 
	1)
		hour=8;
		echo $hour ;;
	0)
		hour=4;
		echo $hour ;;
	esac
fi
}


function check_daily_weges(){
	result="$( getHours $(()) )"
	daily_weges=$((20*result))
	echo $daily_weges 

}


function calculate_weges_for_month(){
day=1
hour=0
calhour=0
total_sal=1
while [ $day -le 20 ] || [ $hour -lt 100 ]
do
	hour="$( getHours $(()) )"
	calhour=$(($calhour + hour))
	result="$( check_daily_weges $(()) )"
	total_sal=$(( $total_sal + result ))
	store[$day]=$result
	if [ $day -eq 20 ]
	then
		break;
	fi
	((day++))
done
	echo "total monthly sal $total_sal"
	echo " days ${!store[@]}" 
	echo " daily_weges ${store[@]}"
}
calculate_weges_for_month
