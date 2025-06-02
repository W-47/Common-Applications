# HTB Meetup Lab: Connecting to Unsecured MongoDB

## 🧠 Objective

Simulate an insecure MongoDB database that is open to the internet and lacks authentication.

## 🚀 Getting Started

### Installing Mongo on Linux

1. Import the public key.

`sudo apt-get install gnupg curl`

`curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg \
   --dearmor`

2. Create the List file.

`echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] http://repo.mongodb.org/apt/debian bookworm/mongodb-org/8.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list`

3. Reload the package database.

`sudo apt-get update`

4. Install the Community server

`sudo apt-get install -y mongodb-org`
