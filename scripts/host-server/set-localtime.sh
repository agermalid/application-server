#!/bin/bash
echo "Check current date"
date
echo "Set timezone Asia/Almaty"
sudo timedatectl set-timezone Asia/Almaty
echo "Check the set date"
date