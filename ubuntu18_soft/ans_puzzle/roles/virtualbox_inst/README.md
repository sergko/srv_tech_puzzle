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

Install
apt install tigervnc-viewer
+
Use xtigervncviewer -SecurityTypes VncAuth -passwd /root/.vnc/passwd :2
xtigervncviewer -SecurityTypes VncAuth -passwd ~/.vnc/passwd :2
xtigervncviewer -SecurityTypes VncAuth -passwd ~/.vnc/passwd :2
to connect to the VNC server.

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

less /usr/bin/vncserver


https://habr.com/en/company/ua-hosting/blog/273201/

editing the file
$HOME/.vnc/xstartup to call your preferred window manager. Use startkde &
for KDE, gnome-session & for GNOME or fvwm2 & for FVWM2
twm &
mate-session &
If you need to change the setting without restarting VNC server, I had good results with:
vncconfig -set RandR="1024x768,1600x900"and then using xrandr to change resolution as fgregg suggested:
xrandr -s 1024x768
xrandr -s 1600x900

Start the server with multiple 'geometry' instances, like:
vnc4server -geometry 1280x1024 -geometry 800x600
From a terminal in a vncviewer (with: 'allow dymanic desktop resizing' enabled) use xrandr to view the available modes:
xrandr
to change the resulution, for example use:
xrandr -s 800x600
http://idlebrains.org/howto/changing-vnc-sessions-geometry-on-the-fly/

You can change resolution when you connect to monitor-less PC via VNC by executing the following command:
xrandr --fb 1280x1024
Source: http://www.x.org/archive/X11R7.5/doc/man/man1/xrandr.1.html

Use this instead
DO STEPS 1-3 from this sites tutorial then do this
xrandr –newmode “1920×1080” 173.00 1920 2048 2248 2576 1080 1083 1088 1120 -hsync +vsync
xrandr –addmode Virtual1 1920×1080
xrandr –output Virtual1 –mode 1920×1080

MATE adding
http://wiki.mate-desktop.org/download
sudo apt-get install mate-desktop-environment-extras