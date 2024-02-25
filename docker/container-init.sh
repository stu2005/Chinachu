#!/bin/bash
rc-service chinachu-operator start
rc-service chinachu-wui start
tail -f /var/log/*