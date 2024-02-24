#!/bin/bash

# Start the first process
rc-service chinachu-operator start
rc-service chinachu-wui start

# Wait for any process to exit
wait $(cat /var/run/chinachu*)

# Exit with status of process that exited first
exit $?