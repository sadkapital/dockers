#!/bin/bash

set -e

backup_path=$HOME/backup

# run backup script
$HOME/docker_volume_sync.sh $HOME/gitea/docker-compose.yml gitea $backup_path restore && $HOME/docker_volume_sync.sh $HOME/nextcloud/docker-compose.yml nextcloud $backup_path restore

# remove old backup folder
rm -r $backup_path.old
