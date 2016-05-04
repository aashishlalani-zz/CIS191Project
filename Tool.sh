#!/bin/bash

city=$1
#TEMPERATURE COLORS
#RED
gpio -g mode 4 out
#GREEN
gpio -g mode 17 out
#BLUE
gpio -g mode 27 out

#EMAIL colors
#GREEN
gpio -g mode 5 out
#BLUE
gpio -g mode 6 out

#RAIN colors
#GREEN
gpio -g mode 19 out
#BLUE
gpio -g mode 26 out

#TIME colors
#BLUE
gpio mode 26 out
#RED
gpio mode 27 out
#YELLOW
gpio mode 28 out
#GREEN
gpio mode 29 out

while true; do
	rain=$(weather $city)
	temp=$(./printTemp.sh $city)
	num=$(./check_email.sh)
	time=$(./timeTeller.sh)

	if [[ $temp -le 40 ]]; then
		gpio -g write 17 0
		gpio -g write 4 0
		gpio -g write 27 1
	elif [[ $temp -le 70 ]]; then
		gpio -g write 4 0
		gpio -g write 27 0
		gpio -g write 17 1
	elif [[ $temp -ge 71 ]]; then
		gpio -g write 27 0
		gpio -g write 17 0
		gpio -g write 4 1
	fi

	if [[ $num -eq 0 ]]; then
		gpio -g write 6 0
		gpio -g write 5 1
	elif [[ $num -ge 1 ]]; then
		gpio -g write 5 0
		gpio -g write 6 1
	fi

	if [[ $rain == *"Precipitation"* ]]; then
		gpio -g write 19 0
		gpio -g write 26 1
	else
		gpio -g write 26 0
		gpio -g write 19 1
	fi
	
	$(./calcBinary.sh $time)

done
