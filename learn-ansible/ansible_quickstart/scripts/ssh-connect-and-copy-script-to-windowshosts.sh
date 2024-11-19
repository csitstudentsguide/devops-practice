#!/bin/bash

echo "Enter pc no"
read pc_no

host="admin@sirpl1-${pc_no}152022.local"
host_target_path=":/C:/Users/admin/"

scp ConfigureRemotingForAnsible.ps1 $host$host_target_path

ssh $host