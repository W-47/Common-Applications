#!/bin/bash

# Add student user if not exists
id student &>/dev/null || useradd -m student

# Set samba password
(echo "student123"; echo "student123") | smbpasswd -a -s student

# Create flag files
echo "flag{$(head /dev/urandom | tr -dc 'A-Z0-9' | head -c 12)}" > /srv/smb/public/anon_flag.txt
echo "flag{$(head /dev/urandom | tr -dc 'A-Z0-9' | head -c 12)}" > /srv/smb/private/private_flag.txt

# Run Samba in foreground
exec smbd -F --no-process-group

