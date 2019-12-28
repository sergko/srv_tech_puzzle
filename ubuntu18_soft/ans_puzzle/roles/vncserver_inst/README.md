Role Name
=========

A brief description of the role goes here.

Requirements
------------

root@usrv:~# vncsrv start

You will require a password to access your desktops.

Password:/usr/bin/xauth:  file /root/.Xauthority does not exist

New 'usrv:2 (root)' desktop at :2 on machine usrv

Starting applications specified in /etc/X11/Xvnc-session
Log file is /root/.vnc/usrv:2.log

Use xtigervncviewer -SecurityTypes VncAuth -passwd /root/.vnc/passwd :2 to connect to the VNC server.

root@usrv:~#
A VNC/X11 server is already running as :2 on machine usrv
root@usrv:~# A VNC/X11 server is already running as :2 on machine usrv
root@usrv:~# ^C

Passwd:
Full: vncsrv
ReadOnly: vncvnc

sudo -u vnc vncsrv start
->
vnc      11373  0.4  0.3 421960 46112 pts/4    Sl   22:19   0:00 /usr/bin/Xtigervnc :2 -desktop usrv:2 (vnc) -auth /home/vnc/.Xauthority -geometry 1024x768 -depth 16 -rfbwait 30000 -rfbauth /home/vnc/.vnc/passwd -rfbport 5902 -pn -localhost -SecurityTypes VncAuth

su@np:~$ ssh-copy-id vnc@usrv
->
KRDC
vnc://usrv:5902 + ssh tunnel enabled over localhost + user vnc
-> need enter ssh password "vnc"
and then vnc password "vncsrv"

or make manual ssh tunnel
vnc_ssh:
	ssh vnc@usrv -L 5902:localhost:5902
-> KRDC
localhost:5902 + vnc password