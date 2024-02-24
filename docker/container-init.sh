#!/bin/bash

# Start the first process
/sbin/init &

# Start the second process
rc-service chinachu-operator start
rc-service chinachu-wui start

# Wait for any process to exit
wait -n

# Exit with status of process that exited first
exit $?