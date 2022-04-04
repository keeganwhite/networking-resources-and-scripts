Run ```sudo systemctl edit getty@tty1.service``` from the terminal. This will
create a drop-in file (if neccessary) and open it an editor. Add the following,
replacing **myusername** with your user name:
```
[Service]
ExecStart=
ExecStart=-/sbin/agetty --noissue --autologin myusername %I $TERM
Type=idle
```
