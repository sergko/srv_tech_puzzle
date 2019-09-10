#HOST SERVER
ans_prep:
	@apt install -y python3.7
useradd:
	@useradd -m -d /home/ansrv -s /bin/bash -c "Ansible Service user" -G adm,su,sudo ansrv
passwd:
	@passwd ansvr #V@6
sudoers:
	#/etc/sudoers.d/ansrv   [----]  1 L:[  1+ 1   2/  2] *(22  /  51b) 0097 0x061                            [*][X]
	@echo %ansrv ALL=(ALL) NOPASSWD: ALL >> /etc/sudoers.d/ansrv

#HOST WORKSTATION
mount_net:
	@mount -t cifs -o credentials=/etc/creds/UMATE //10.2.83.208/zfs /net/smb_umate_zfs/
	@mount -t cifs -o credentials=/etc/creds/UMATE //10.2.83.208/zfs2 /net/smb_umate_zfs2/
	@mount -t cifs -o credentials=/etc/creds/UMATE //10.2.83.208/zfs3 /net/smb_umate_zfs3/
	@mount -t cifs -o credentials=/etc/creds/UMATE //10.2.83.208/nata /net/smb_umate_nata/

umount_net:
	umount /net/smb_umate_zfs/ ;\
	umount /net/smb_umate_zfs2/ ;\
	umount /net/smb_umate_zfs3/ ;\
	umount /net/smb_umate_nata/

hosts_usrv:
	@echo 10.2.83.208	usrv >> /etc/hosts
ssh-keygen-ansrv:
	@[ -d ./files ]  ||  mkdir -p ./files
	@ssh-keygen -t rsa -C "ansrv@sergko.srvs" -f ./files/id_rsa_ansrv
ssh-copy-id:
	@ssh-copy-id ansrv@usrv -i ./files/id_rsa_ansrv.pub
# serg@np:~/Rep_gitkraken/srv_tech_puzzle/ubuntu18_soft/ans_puzzle/files$ ssh-copy-id ansrv@usrv 
# /usr/bin/ssh-copy-id: ERROR: failed to open ID file '/home/serg/.ssh/id_rsa_ansrv': No such file
#         (to install the contents of '/home/serg/.ssh/id_rsa_ansrv.pub' anyway, look at the -f option)
# serg@np:~/Rep_gitkraken/srv_tech_puzzle/ubuntu18_soft/ans_puzzle/files$ ssh-copy-id ansrv@usrv -f
# /usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/serg/.ssh/id_rsa_ansrv.pub"



add_link:
	@ln -s ../../../../ansible-role-openvpn  ./roles/ansi-role-ovpn

ans_new_role:
	@cd roles && ansible-galaxy init vncserver_inst

ans_var:
	@echo "take var=$(var)"
	#run as make ans_var var=text
	#$make ans_var var=text
	#take var=test

#examples to execute
ans_run:
	TAGS="install,server_keys,client_keys,configure" ;\
	SKIP_TAGS="uninstall,firewall,revocation" ;\
	ansible-playbook netsoft.yaml -vvv -i hosts.ini --tags $$TAGS  --skip-tags $$SKIP_TAGS #--ask-sudo-pass -v #vvvv

ans_run_i:
	TAGS="install" ;\
	SKIP_TAGS="uninstall,firewall,revocation" ;\
	ansible-playbook netsoft.yaml -vv -i hosts.ini --tags $$TAGS  --skip-tags $$SKIP_TAGS #--ask-sudo-pass -v #vvvv

ans_dry:
	TAGS="install,server_keys,client_keys,configure" ;\
	SKIP_TAGS="uninstall,firewall,revocation" ;\
	ansible-playbook netsoft.yaml -vvv -i hosts.ini --check --tags $$TAGS  --skip-tags $$SKIP_TAGS #--ask-sudo-pass -v #vvvv

ans_dry2:
	TAGS="install,server_keys,client_keys,configure" ;\
	# echo $$TAGS ;\
	SKIP_TAGS="uninstall,firewall,revocation" ;\
	# echo $$SKIP_TAGS ;\
	echo "ansible-playbook netsoft.yaml -vvv -i hosts.ini --check --tags $$TAGS  --skip-tags $$SKIP_TAGS" ;\
	ansible-playbook netsoft.yaml -vvv -i hosts.ini --check --tags $$TAGS  --skip-tags $$SKIP_TAGS #--ask-sudo-pass -v #vvvv

ans_soft:
	TAGS=all ;\
	echo TAGS=$(TAGS) ;\
	SKIP_TAGS="" ;\
	echo SKIP_TAGS=$(SKIP_TAGS) ;\
	echo "ansible-playbook usrv_prep_soft.yaml -vvv -i hosts.ini --tags $(TAGS)  --skip-tags $(SKIP_TAGS)" ;\
	ansible-playbook usrv_prep_soft.yaml -vv -i hosts.ini #--tags $(TAGS)  --skip-tags $(SKIP_TAGS)  #\
	# ansible_ssh_user=ansrv ansible_ssh_password=Vol@nd666
	#--ask-sudo-pass -v #vvvv

