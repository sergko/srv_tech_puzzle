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