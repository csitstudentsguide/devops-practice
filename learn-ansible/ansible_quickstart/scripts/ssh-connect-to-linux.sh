#!/bin/bash

echo "Enter Linux system no"
read pc_no

echo "Enter Linux system username"
read username

host="${username}@sirpl1-${pc_no}-linux.local"

ssh $host