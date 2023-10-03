#!/bin/bash
# Description: This script performs various system setup tasks.
# Usage: ./mySetup.sh
# Example: ./mySetup.sh

# Task a: Set the frequency of the BBB to 600 MHz.
echo "Setting the frequency of BBB to 600 MHz."
# Replace the following command with the actual command to set the frequency.
# Example: sudo cpufreq-set -c 0 -f 600MHz
# Make sure you have the necessary permissions to set the CPU frequency.

# Task b: Display information on the CPU using cpufreq-info command.
echo "Displaying CPU information:"
cpufreq-info

# Task c: Create a variable named location and assign it the value: /home/debian
location="/home/debian"

# Task d: Echo the value of the variable location.
echo "Location is set to: $location"

# Task e: Create a variable named items and display the number of items in the current working directory.
items=$(ls | wc -l)
echo "Number of items in the current directory: $items"

# Task 2: Modify the PATH environment variable to execute the script from any directory.
# Add the script's directory to the PATH variable
script_directory="$(cd "$(dirname "$0")" && pwd)"
export PATH="$PATH:$script_directory"

# Write the new PATH value to newPathValue.txt
echo "New PATH value: $PATH" > newPathValue.txt
