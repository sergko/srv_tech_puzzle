# owncloudXauto
automation owncloud setup/coonfig/maintainance

set in commandline
$ ansible localhost -m ping -e 'ansible_python_interpreter=/usr/bin/python3'
$ ansible-playbook sample-playbook.yml -e 'ansible_python_interpreter=/usr/bin/python3'
$ mkdir /etc/ansible #+ touch hosts (as at Python3 link above)
https://docs.ansible.com/ansible/latest/cli/ansible-config.html#ansible-config
$ ansible-config -c /etc/ansible/ansible.cfg  
$ ansible all -m setup | less # from hosts - print all config in json
$ ansible -m setup | less
$ ansible-doc -l # list all modules
$ ansible-inventory --list  or --graph - see in Inventory

ansible.cfg usefull # есть в /etc/ansible/ если установлен apt/yum but not pip
#лучше всегда держать в папке с проектом именно конкретный
[defaults]
host_key_checking = false # не будет спрашивать подтверждение фингерпринта при первом подключении, чтобы добавлять в известные хосты authorization_keys
inventory = ./inventory # or ./hosts.txt

