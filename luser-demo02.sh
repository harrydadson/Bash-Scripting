#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the root user or not.

# Display the UID
echo "Your UID is ${UID}"

# Display the username
USER_NAME=$(id -un)
echo "Your username is ${USER_NAME}"

# Display if the user is root or not.
if [[ "${UID}" -eq 0 ]]
then
  echo 'You are root.'
else
  echo 'You are not root.'
fi

# Only display if the UID does not match 1000
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "$UID_TO_TEST_FOR" ]]
then
    echo "Your UID does not match ${UID_TO_TEST_FOR}."
    exit 1
fi

# Display the username
USER_NAME = $(id -un)

# Test if command succeeded
if [[ "${?}" -ne 0 ]] # "$?" most recently command id -un
then
  echo 'the id command did not execute successfully'
  exit 1
fi
echo "Your username is ${USER_NAME}"

# You can use a string test conditional

# Test for != (notequal) for the string
