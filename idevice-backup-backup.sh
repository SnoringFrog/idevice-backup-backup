#!/usr/bin/env sh

#Where you want your backups stored
backup_location=~/idevice-backup-backup

#The filename of your backup (leave it blank if you don't know; the script will attempt to detect it automatically)
backup_name=''

#############
#No need to edit below this line	
today=`date '+%Y-%m-%d'`
itunes_backup="${HOME}/Library/Application Support/MobileSync/Backup/"

mkdir -p "$backup_location"

if [ -z "$backup_name" ]; then
	backup_name=`ls "$itunes_backup" | head -n 1`
fi

cp -r "$itunes_backup/$backup_name" "$backup_location/$today"
