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
  active BOOL,
  type INT NOT NULL,
  profileImageURL VARCHAR(255),
  validationToken VARCHAR(255)
);
-- Insert test user item
INSERT INTO User ( firstName, lastName, email, password, dateJoined, active, type, profileImageURL, validationToken) VALUES 
('superAdmin', 'user', 'email1@email.com','pass1', '2014-07-25 11:18:10', true,'0','https://bfgroupone.s3.amazonaws.com/1690076947341_default_avatar.png',''),
('admin', 'user', 'email2@email.com','pass2', '2014-07-25 11:18:10', true,'1','https://bfgroupone.s3.amazonaws.com/1690076947341_default_avatar.png',''),
('normal', 'user', 'email3@email.com','pass3',  '2014-07-25 11:18:10', true, '2','https://bfgroupone.s3.amazonaws.com/1690076947341_default_avatar.png',''),
('normalNotValid', 'user', 'email4@email.com','pass4', '2014-07-25 11:18:10', true,'3','https://bfgroupone.s3.amazonaws.com/1690076947341_default_avatar.png',''),
('banned', 'user', 'email5@email.com','pass5', '2014-07-25 11:18:10', false,'3','https://bfgroupone.s3.amazonaws.com/1690076947341_default_avatar.png','');

SELECT * FROM User;

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
