#!/bin/bash

username="testingbash"
password="t3sting123"
count=0
num=$(curl -u $username:$password --silent "https://mail.google.com/mail/feed/atom" |  grep -oPm1 "(?<=<title>)[^<]+" | sed '1d' | wc -l)
list=$(curl -u $username:$password --silent "https://mail.google.com/mail/feed/atom")
echo $num
