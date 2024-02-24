#!/bin/bash

# Start the first process
./chinachu service operator execute &

# Start the second process
./chinachu service wui execute &

# Wait for any process to exit
wait -n

# Exit with status of process that exited first
exit $?