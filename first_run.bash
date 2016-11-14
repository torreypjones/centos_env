#!/bin/bash

#add /etc/profile entries
cat append/append.etc_profile >> /etc/profile

#setup mountpoints
./mount_drives.bash
