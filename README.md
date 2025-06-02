🛡️ Attacking Common Applications
Welcome to the Attacking Common Applications lab repo — a hands-on educational resource focused on discovering, understanding, and exploiting vulnerabilities in commonly used network services.

⚠️ This project is intended for educational and authorized use only. Always hack ethically and only in controlled lab environments.

📂 Modules
Module Description
01-smb Null sessions, anonymous shares, and misconfigs in SMB
02-ftp Anonymous login, file upload abuse, and credential sniffing
03-telnet Insecure authentication and remote command execution over Telnet

🧪 Getting Started

1. Clone the Repository

```
git clone https://github.com/W-47/Common-Applications.git
cd Common-Applications
```

2. Start a Lab
   Each module has its own Docker environment.

```
cd 01-smb
docker-compose up -d
```

Refer to the README.md inside each module folder for instructions.

🛠️ Requirements
Docker & Docker Compose

`Kali Linux`, `Parrot OS`, or any attack VM

Tools: `nmap`, `smbclient`, `ftp`, `telnet`, `nxc`, `enum4linux`, `smbmap`, etc.

🎯 What You'll Learn
How to enumerate and exploit SMB shares

Common FTP misconfigurations like anonymous upload

Telnet exploitation using weak logins or exposed shells
