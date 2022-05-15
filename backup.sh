#!/bin/bash

backup_dirs=("/etc" "/home" "/boot")
dest_dir="/backup"
dest_server="bkserver1"
backup_date=$(date +%b-%d-%y)

echo "Starting backup of: ${backup_dirs[@]}"

for i in "${backup_dirs[@]}"; do
    sudo tar -Pczf /tmp/$i-$backup_date.tar.gz $i
    if [ $? -eq 0 ]; then
        echo "$i backup succeeded."
    else
        echo "$i backup failed."
    fi
    scp /tmp/$i-$backup_date.tar.gz $dest_server:$dest_dir
    if [ $? -eq 0 ]; then
        echo "$i backup transfer succeeded."
    else
        echo "$i backup transfer failed."
    fi
done

#cleanup /tmp
sudo rm /tmp/*.gz

echo "Backup script is done."

