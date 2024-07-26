#!/bin/sh

set -e

service wazuh-agent start 

tail -f /dev/null
