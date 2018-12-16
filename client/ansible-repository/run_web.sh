#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
TARGET="${SCRIPT_DIR}/web.yml"
echo $TARGET

ansible-playbook -v -u ubuntu -i hosts --ask-become-pass $TARGET
