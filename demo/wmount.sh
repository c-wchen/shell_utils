#!/bin/bash

mount_ip=192.168.2.3
prefix=wchen
start=1
end=32

# set -x
mounts=$(mount | awk '{print $3}')
check_mount_status() {
    if  [[ "${mounts[@]}"  =~ "$1" ]]; then
        return 0
    else
        return 1
    fi
}

for item in `seq -f '%03g' ${start} ${end}`
do
    mount_dir=/mnt/${prefix}${item}
    if check_mount_status "${mount_dir}"; then
        umount -l ${mount_dir}
        mount -t nfs ${mount_ip}:/${prefix}${item} ${mount_dir}
    else
        mount -t nfs ${mount_ip}:/${prefix}${item} ${mount_dir}
    fi
done