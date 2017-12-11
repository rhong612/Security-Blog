DROP DATABASE IF EXISTS cs166_raymond;
CREATE DATABASE cs166_raymond;
USE cs166_raymond;

CREATE TABLE login (
  fullname  VARCHAR(128) DEFAULT NULL,
  user  VARCHAR(32) NOT NULL,
  pass VARCHAR(64) NOT NULL,
  salt VARCHAR(32) NOT NULL,
  role VARCHAR(16) DEFAULT 'user',
  PRIMARY KEY (user)
);

CREATE TABLE blogs (
 blog_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 user VARCHAR(32) NOT NULL,
 title VARCHAR(32),
 body TEXT,
 date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 FOREIGN KEY (user)
	REFERENCES login(user) ON DELETE CASCADE ON UPDATE CASCADE,
 PRIMARY KEY (blog_id)	
);
