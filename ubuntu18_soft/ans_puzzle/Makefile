
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

add_link:
	@ln -s ../../../../ansible-role-openvpn  ./roles/ansi-role-ovpn

ans_new_role:
	@cd roles && ansible-galaxy init vncserver_inst

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
	echo $$TAGS ;\
	SKIP_TAGS="uninstall,firewall,revocation" ;\
	echo $$SKIP_TAGS ;\
	echo "ansible-playbook netsoft.yaml -vvv -i hosts.ini --check --tags $$TAGS  --skip-tags $$SKIP_TAGS" ;\
	ansible-playbook netsoft.yaml -vvv -i hosts.ini --check --tags $$TAGS  --skip-tags $$SKIP_TAGS #--ask-sudo-pass -v #vvvv

