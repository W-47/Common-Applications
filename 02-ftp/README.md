## 🖧 FTP Module

This module demonstrates common misconfigurations in FTP services, focusing on **anonymous access**, **basic authentication**, and **file permissions**. Students will learn how to interact with FTP services and enumerate accessible content.

---

### 🛠️ Setup Overview

The lab deploys a single **clean FTP server** using Docker:

| Service   | Port | Description                                      |
| --------- | ---- | ------------------------------------------------ |
| clean-ftp | 21   | Secure FTP server with anonymous and user access |

---

### 📌 Flags

- **Anonymous flag**: `/srv/ftp/anon_flag.txt`
- **Private flag** (requires login): `/srv/ftp/private/private_flag.txt`

Both flags are generated at container startup in the format: `flag{RANDOM}`.

---

### 👨‍🎓 Student Learning Objectives

- Understand FTP authentication mechanisms
- Connect to FTP servers using terminal-based and GUI tools
- Enumerate directories and download accessible files
- Understand the risks of anonymous FTP access

---

### 🧪 Interaction Examples

#### 🔓 Anonymous Login

```bash
ftp 127.0.0.1
Name: anonymous
Password: [press enter]
ftp> ls

```
