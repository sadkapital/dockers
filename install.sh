cp docker-backup.service /etc/systemd/system/docker-backup.service
cp docker-backup.timer /etc/systemd/system/docker-backup.timer

systemctl daemon-reload

# Enable service and timer, start timer to run service @ 4:00am
systemctl enable docker-backup.service
systemclt enable docker-backup.timer
systemclt start docker-backup.timer
