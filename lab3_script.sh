#!/bin/bash
# Authors : Niharika Kunapuli and Tanvi Gopalabhatla
# Date: 9/19/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter the filename:"
read filename
echo "Enter the regex:"
read regex
grep $regex $filename
echo "The number of phone numbers:"
egrep -c "[0-9]{3}-[0-9]{3}-[0-9]{4}$" $filename
echo "The number of email addresses:"
egrep -c "@" $filename
egrep -o "^303{3}-[0-9]{3}-[0-9]{4}$" $filename
grep "@geocities.com" $filename >> email_results.txt
