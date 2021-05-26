#!/bin/bash

# This script displays various information to the screen.

# Display "Hello!"

echo "Hello"

# Assign a value to a variable, variables use ''
WORD='script'

# Display the value, printing out uses ""
echo "$WORD"

# combine the variable with hard-coded text
echo "This is a shell $WORD" # or ${WORD}

# Append text to a variable
echo "${WORD}ing is fun!"

# Create another variable
ENDING='ed'

# Combine two variables
echo "This is ${WORD}${ENDING}."

# change the value stored in the ENDING variable (Reassignment)
ENDING='ing'
echo "This is ${WORD}${ENDING} is fun"

# Reassign value to ENDING
ENDING='s'
echo "You are going to write ${WORD}${ENDING}"




