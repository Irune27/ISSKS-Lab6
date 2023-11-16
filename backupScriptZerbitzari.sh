#!/bin/bash

SOURCE_DIR=/home/irune/Segurtasuna/
BACKUP_DIR=/var/tmp/Backups
DATETIME=$(date +%F)
BACKUP_PATH=$BACKUP_DIR/$DATETIME
LATEST_LINK=$BACKUP_DIR/$(date -d yesterday +%F)

ssh irunepalacios2003@35.189.232.207 mkdir -p $BACKUP_PATH

rsync -a -e ssh --link-dest=$LATEST_LINK $SOURCE_DIR irunepalacios2003@35.189.232.207:$BACKUP_PATH
