#!/bin/bash

# Check if the file "input.txt" exists
if [ -e "/etc/passwd" ]; then
    # Loop through each line in the file
    while read -r line; do
        # Print each line to the terminal
	IFS=":"
        read -ra array <<< "$line"

	echo "The user ${array[0]} is part of the ${array[2]} gang, lives in ${array[5]} and rides ${array[6]}.${array[3]}'s place is protected by the passcode ${array[1]}, more info about the user here: ${array[0]}"

    done < "/etc/passwd"
else
    echo "The file 'input.txt' does not exist."
fi
