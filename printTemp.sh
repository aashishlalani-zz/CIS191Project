#!/bin/sh

city=$1

$(weather $city >> file)
just_temp=$(grep -Po -- 'Temperature: \K\w*' file)
rm -rf file
echo $just_temp
