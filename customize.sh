    ui_print "gplenenabler "
    ui_print " "

    ui_print "backup xml to /data/media/0/DCIM/bu/backup/system/etc/sysconfig"
    mkdir -p /data/media/0/DCIM/bu/backup/system/etc/sysconfig
    cp -arfv  /system/etc/sysconfig/* /data/media/0/DCIM/bu/backup/system/etc/sysconfig/
    #cp -arfv  /data/media/0/DCIM/bu/resolv.conf /system/etc/
    cp -arfv  /data/media/0/DCIM/bu/resolv.conf $MODPATH/system/etc/

    set_perm_recursive $MODPATH 0 0 0755 0644
