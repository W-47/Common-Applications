// mongodb-init/init.js
db = db.getSiblingDB("htb_lab");

db.users.insertMany([
  { username: "admin", password: "admin123", role: "admin" },
  { username: "guest", password: "guest123", role: "guest" },
]);

db.secrets.insertOne({
  flag: "HTB{unsecured_mongodb_flag}",
});
