#!/bin/bash
#examples to execute
TAGS="install"
SKIP_TAGS=""
ansible-playbook owncloudx.yml -vv --tags $TAGS  --skip-tags $SKIP_TAGS #--ask-sudo-pass -v #vvvv