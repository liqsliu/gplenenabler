#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

#	while ! [ `pgrep -x dnscrypt-proxy` ] ; do
#		$MODDIR/system/bin/dnscrypt-proxy -config /data/media/0/dnscrypt-proxy/dnscrypt-proxy.toml && sleep 15;
#	done

# for nginx sshd ...
		/system/bin/sysctl net.ipv4.ip_unprivileged_port_start=0 && echo W: open port for users && sleep 15;


