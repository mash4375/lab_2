#!/bin/bash
# Authors : Matthew Shaw
# Date: 2/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a regex: "
read regex

echo "Enter a file name: "
read fileName

# Run user provieded regex into user provided code
grep -E $regex $fileName 

# Count phone numbers
grep -E -c  "(^[0-9]{3}[\-]{1}[0-9]{3}[\-]{1}[0-9]{4}$)" regex_practice.txt

# Count email addresses
grep -E -c  "(^.+\@.+\..{3}$)" regex_practice.txt

# List all 303 phone numbers and store in "phone_results.txt"
grep -E "(303-[0-9]{3}-[0-9]{4}$)" regex_practice.txt > phone_results.txt
cat phone_results.txt

# List all emails from geocities.com and store results in "email_results.txt"
grep -E "(^.+\@geocities\.com$)" regex_practice.txt > email_results.txt
cat email_results.txt

# List all lines that match command-line and store in "command_results.txt"
grep -E $1 regex_practice.txt > command_results.txt
cat command_results.txt