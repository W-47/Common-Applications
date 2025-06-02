# Module 01 - SMB Attacks

This lab focuses on understanding and exploiting common SMB misconfigurations, including:

- Null sessions (anonymous login without credentials)
- Anonymous shares and their risks
- Enumerating SMB shares and users
- Basic attacks like writable shares and share abuse

---

## 🧰 Lab Setup

The SMB server runs inside a Docker container using the `dperson/samba` image. It includes:

- A **public share** accessible anonymously (guest/null session)
- A **private share** requiring credentials (`student:student123`)
- Ports `139` and `445` exposed for SMB communication

To start the lab:

`docker-compose up -d`

To stop and clean volumes:

`docker-compose down -v`

🔎 Enumeration

1. List Shares as Anonymous (Null Session)

`smbclient -L //localhost -N`
You should see the public share listed without authentication.

2. Connect to the Public Share

`smbclient //localhost/public -N`

Browse files and download any flags or info files.

3. Attempt to Access Private Share (Should Fail)

`smbclient //localhost/private -N`
Expect Access Denied errors since this requires login.

4. Authenticate and Access Private Share

`smbclient //localhost/private -U student`

When prompted, enter password: student123

🛠️ Exploitation & Exercises
Enumerate with enum4linux:

`enum4linux -a localhost`
Map shares and test write access with smbmap:

`smbmap -H localhost -u guest -p ''`

Upload a file to a writable share (if configured) and check persistence.

Experiment with null session access on other tools like nmap scripts.
