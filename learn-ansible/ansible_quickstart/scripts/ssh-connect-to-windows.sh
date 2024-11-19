#!/bin/bash

echo "Enter windows system no"
read pc_no

host="admin@sirpl1-${pc_no}152022.local"

ssh $host