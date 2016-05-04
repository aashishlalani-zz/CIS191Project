#!/bin/bash

case $1 in
01)
	gpio write 26 0
	gpio write 27 0
	gpio write 28 0
	gpio write 29 1
	;;
02)
	gpio write 26 0
	gpio write 27 0
	gpio write 28 1
	gpio write 29 0
	;;
03)
	gpio write 26 0
	gpio write 27 0
	gpio write 28 1
	gpio write 29 1
	;;
04)
	gpio write 26 0
	gpio write 27 1
	gpio write 28 0
	gpio write 29 0
	;;
05)
	gpio write 26 0
	gpio write 27 1
	gpio write 28 0
	gpio write 29 1
	;;
06)
	gpio write 26 0
	gpio write 27 1
	gpio write 28 1
	gpio write 29 0
	;;
07)
	gpio write 26 0
	gpio write 27 1
	gpio write 28 1
	gpio write 29 1
	;;
08)
	gpio write 26 1
	gpio write 27 0
	gpio write 28 0
	gpio write 29 0
	;;
09)
	gpio write 26 1
	gpio write 27 0
	gpio write 28 0
	gpio write 29 1
	;;
10)
	gpio write 26 1
	gpio write 27 0
	gpio write 28 1
	gpio write 29 0
	;;
11)
	gpio write 26 1
	gpio write 27 0
	gpio write 28 1
	gpio write 29 1
	;;
12)
	gpio write 26 1
	gpio write 27 1
	gpio write 28 0
	gpio write 29 0
	;;
esac
