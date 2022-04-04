#!/bin/bash
#
# enable/disable tftpd server

sudo echo "authenticated."

function status
{
    if [ "`sudo launchctl list | grep tftp | wc -l`" -eq "0" ]; then
        echo "tftpd stopped."
    else
        echo "tftpd running."
    fi
}

case $1 in
    start)
        sudo launchctl load -w /System/Library/LaunchDaemons/tftp.plist
 status
        ;;
    stop)
        sudo launchctl unload -w /System/Library/LaunchDaemons/tftp.plist
        status
        ;;
    status)
        status
        ;;
    *)
        echo "Usage: $0 [start|stop|status]"
        ;;
esac
