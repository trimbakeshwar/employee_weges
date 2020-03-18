echo "welcome to the employee weges"
function check_attendance(){
attendance=$((RANDOM%2))
if [ $attendance -eq 1 ]
then
	echo 1
else
	echo 0
fi
}
check_attendance

