#!/bin/bash

echo "Enter pc no"
read pc_no

host="ladmin@sirpl1-${pc_no}-linux.local"

ssh-copy-id $host

ssh $host