#!/bin/bash

servers=$(cat inventory.txt)

echo -n "Enter the username: "
read usrname
echo -n "Enter the user id: "
read uid

for i in $servers; do
    echo $i
    ssh $i "sudo useradd -m -u $uid $usrname"
    if [ $? -eq 0 ]; then
        echo "User $usrname is added successfully on $i"
    else
        echo "Error on $i"
    fi
done

