CREATE DATABASE IF NOT EXISTS UserDB;
CREATE DATABASE IF NOT EXISTS HistoryDB;
CREATE DATABASE IF NOT EXISTS MessageDB;
USE UserDB;

DROP TABLE IF EXISTS User;

-- Create the User table
CREATE TABLE IF NOT EXISTS User (
  userId INT PRIMARY KEY AUTO_INCREMENT,
  firstName VARCHAR(255) NOT NULL,
  lastName VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  dateJoined DATETIME NOT NULL,
  type INT NOT NULL,
  profileImageURL VARCHAR(255),
  validationToken VARCHAR(255)
);
-- Insert test user item
INSERT INTO User ( firstName, lastName, email, password, dateJoined, type, profileImageURL, validationToken) VALUES 
('superAdmin', 'user', 'email1','pass1', '2014-07-25 11:18:10','0','',''),
('admin', 'user', 'email2','pass2', '2014-07-25 11:18:10','1','',''),
('normal', 'user', 'email3','pass3',  '2014-07-25 11:18:10', '2','',''),
('normalNotValid', 'user', 'email4','pass4', '2014-07-25 11:18:10','3','',''),
('banned', 'user', 'email5','pass5', '2014-07-25 11:18:10','4','','');

SELECT * FROM UserDB;

USE HistoryDB;
DROP TABLE IF EXISTS History;
-- Create the History table
CREATE TABLE IF NOT EXISTS History (
  historyId INT PRIMARY KEY AUTO_INCREMENT,
  userId INT NOT NULL,
  postId INT NOT NULL,
  viewDate DATE NOT NULL
);

USE MessageDB;
DROP TABLE IF EXISTS Message;
-- Create the Message table
CREATE TABLE IF NOT EXISTS Message (
  messageId INT PRIMARY KEY AUTO_INCREMENT,
  userId INT NOT NULL,
  subject VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  message VARCHAR(255) NOT NULL,
  dateCreated DATE NOT NULL,
  status VARCHAR(255) NOT NULL
);
