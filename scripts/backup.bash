#!/bin/bash

 rsync -avz \
 -e 'ssh -p 55389' \
 --include=/.ssh/*** \
 --include=/openvpn-client-config/*** \
 --include=/Documents/*** \
 --include=/*Projects*/*** \
 --include=/Desktop/*** \
 --include=/.*bash* \
 --exclude=* \
 /home/raflman/ \
 raflman@157.230.107.139:/home/raflman/backups/titan-laptop-backup/raflman/
