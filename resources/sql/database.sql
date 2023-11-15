create database duck;
use duck;

CREATE TABLE users (
    user_id INT auto_increment,
    username VARCHAR(45) NOT NULL,
    password VARCHAR(45) NOT NULL,
    salt VARCHAR(60) NOT NULL,
    PRIMARY KEY (`user_id`)
    );

CREATE TABLE activity_register(
    registry_id INT auto_increment,
    user_id INT NOT NULL,
    document_title VARCHAR(50) NOT NULL,
    access_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    PRIMARY KEY (`registry_id`)
);