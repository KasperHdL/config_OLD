#!/bin/sh

ESSID="Hermes-UdenSko_5GHz"

SRC="/"
DEST="admin@192.168.0.14:/share/backup/snapshot/"
LAST="admin@192.168.0.14:/share/backup/latest_snapshot"
EXCLUDE='--exclude=/home/kaholi/.local/share/Steam/* --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* --exclude=/lost+found'

if iwgetid | grep -qs ":\"$ESSID\""; then
	rsync -aPh -e ssh $EXCLUDE $SRC $DEST
fi
