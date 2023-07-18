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
  active BOOLEAN DEFAULT TRUE,
  dateJoined DATE NOT NULL,
  type INT NOT NULL,
  profileImageURL VARCHAR(255)
);
-- Insert test user item
INSERT INTO User ( firstName, lastName, email, password, active, dateJoined, type, profileImageURL) VALUES 
('jane', 'doe', 'email','pass', true, now(),' 0',''),
('first1', 'last1', 'email1','pass1', true, now(),'1',''),
( 'first2', 'last2', 'email2','pass2', true, now(),'2',''),
( 'first3', 'last3', 'email3','pass3', false, '2014-07-25 11:18:10.999999','3','');

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
