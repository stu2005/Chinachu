#!/bin/bash

node app-operator.js &
node app-wui.js &
wait -n
exit $?