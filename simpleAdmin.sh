#!/bin/bash
# Description: This script takes 4 command-line arguments to perform directory and file operations.
# Usage: ./simpleAdmin.sh <dir1_name> <dir2_name> <file_name> <link_name>
# Example: ./simpleAdmin.sh dir1 dir2 message.txt linkName

# Check if exactly 4 command-line arguments are provided
if [ "$#" -ne 4 ]; then
    echo "Usage: ./simpleAdmin.sh <dir1_name> <dir2_name> <file_name> <link_name>"
    exit 1
fi

# Action 1: Create a directory using the first argument as the name
dir1_name="$1"
mkdir "$dir1_name" && echo "Creating a directory named '$dir1_name' .......... done!" || { echo "Error: Failed to create '$dir1_name'."; exit 1; }

# Action 2: Create a directory inside the directory created in Action 1 using the second argument as the name
dir2_name="$2"
mkdir "$dir1_name/$dir2_name" && echo "Creating a directory named '$dir2_name' under '$dir1_name' .......... done!" || { echo "Error: Failed to create '$dir2_name'."; exit 1; }

# Action 3: Create a text file with the third argument as the name, write "Hello World!" to it, and save it in the directory created in Action 2
file_name="$3"
echo "Hello World!" > "$dir1_name/$dir2_name/$file_name" && echo "Creating a text file named '$file_name' .......... done!" || { echo "Error: Failed to create '$file_name'."; exit 1; }

# Action 4: Create a link from the working directory to the sub-directory created in Action 2 using the fourth argument as the name of the link
link_name="$4"
ln -s "$dir1_name/$dir2_name" "$link_name" && echo "Creating a link from the working directory to '$dir1_name/$dir2_name' .......... done!" || { echo "Error: Failed to create the link '$link_name'."; exit 1; }

# Display success message
echo "Actions completed successfully."

