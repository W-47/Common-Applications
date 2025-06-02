#!/bin/bash

# Generate flags
mkdir -p /srv/ftp/public
echo "flag{$(head /dev/urandom | tr -dc 'A-Z0-9' | head -c 10)}" > /srv/ftp/public/anon_flag.txt

# Optional: add a local user and a private flag
useradd -m student
echo "student:student123" | chpasswd
mkdir -p /home/student/private
echo "flag{$(head /dev/urandom | tr -dc 'A-Z0-9' | head -c 10)}" > /home/student/private/private_flag.txt
chown -R student:student /home/student/private

# Start vsftpd
exec /usr/sbin/vsftpd /etc/vsftpd.conf

