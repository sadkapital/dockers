#!/bin/bash

set -e

backup_path=$HOME/backup
mkdir -p $backup_path

# rename old backup folder
mv $backup_path $backup_path.old

# run backup script
$HOME/docker_volume_sync.sh $HOME/gitea/docker-compose.yml gitea $backup_path backup && $HOME/docker_volume_sync.sh $HOME/nextcloud/docker-compose.yml nextcloud $backup_path backup

# remove old backup folder
rm -r $backup_path.old
