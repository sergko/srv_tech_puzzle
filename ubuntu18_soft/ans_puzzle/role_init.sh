#!/bin/bash
#runner for adding role
test -d roles || mkdir roles
#cd roles && ansible-galaxy init install_from_repo
#cd roles && ansible-galaxy init install_from_repo_add
#cd roles && ansible-galaxy init install_from_repo_n_config
#cd roles && ansible-galaxy init install_from_deb
#cd roles && ansible-galaxy init install_from_deb_n_config
#cd roles && ansible-galaxy init owncloud_install_local
cd roles && ansible-galaxy init owncloud_prereq_local

