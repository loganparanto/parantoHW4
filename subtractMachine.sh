#!/bin/bash
# Description: This script takes 2 command-line arguments, subtracts the smaller from the larger,
# and counts down from the difference to 1 while printing each count to stdout.
# Usage: ./subtractMachine.sh <number1> <number2>
# Example: ./subtractMachine.sh 3 8

# Check if exactly 2 command-line arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: ./subtractMachine.sh <number1> <number2>"
    exit 1
fi

# Get the two numbers from command-line arguments
number1="$1"
number2="$2"

# Determine which number is larger
if [ "$number1" -gt "$number2" ]; then
    echo "$number1 is larger than $number2"
    difference=$((number1 - number2))
else
    echo "$number2 is larger than $number1"
    difference=$((number2 - number1))
fi

echo "Difference = $difference"

# Count down from the difference to 1 and print each count
while [ "$difference" -gt 0 ]; do
    echo "Count Down = $difference"
    difference=$((difference - 1))
done

