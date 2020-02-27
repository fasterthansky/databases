CREATE DATABASE chat;

USE chat;



/* Create other tables and define schemas for them here! */
CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(20),
  PRIMARY KEY (id)
);

CREATE TABLE rooms (
id INT NOT NULL AUTO_INCREMENT,
room_name VARCHAR(30),
PRIMARY KEY (id)
);

CREATE TABLE messages (
  /* Describe your table here.*/
  id INT NOT NULL AUTO_INCREMENT,
  message_text VARCHAR(100),
  users_id int,
  rooms_id int,
  PRIMARY KEY (id),
  FOREIGN KEY (users_id) REFERENCES users(id),
  FOREIGN KEY (rooms_id) REFERENCES rooms(id)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

