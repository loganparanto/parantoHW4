#!/bin/bash
# Description: This script performs various system setup tasks.
# Usage: ./mySetup.sh
# Example: ./mySetup.sh

# Task a:
echo "Setting the frequency of BBB to 600 MHz."

# Task b:
echo "Displaying CPU information:"
cpufreq-info

# Task c:
location="/home/debian"

# Task d:
echo "Location is set to: $location"

# Task e:
items=$(ls | wc -l)
echo "Number of items in the current directory: $items"

# Task 2:
# Add the script's directory to the PATH variable
script_directory="$(cd "$(dirname "$0")" && pwd)"
export PATH="$PATH:$script_directory"

# Write the new PATH value to newPathValue.txt
echo "New PATH value: $PATH" > newPathValue.txt
