DROP DATABASE if exists notesdb;
CREATE DATABASE notesdb;

USE notesdb;

CREATE TABLE if not exists user (
    username VARCHAR(20) NOT NULL, 
    password VARCHAR(20) NOT NULL, 
    firstname VARCHAR(20), 
    lastname VARCHAR(20), 
    email VARCHAR(40), 
    
    CONSTRAINT PK_username PRIMARY KEY (username)
);


CREATE TABLE note (

note_id    int(11) NOT NULL AUTO_INCREMENT,    
username VARCHAR(20) NOT NULL,
text    VARCHAR(100) NOT NULL,

PRIMARY KEY (note_id),
CONSTRAINT FK_id FOREIGN KEY (username)
REFERENCES user(username)

);

INSERT INTO user(username, password)
VALUES("admin","password");


INSERT INTO note(username, text)
VALUES("admin","password");


COMMIT;
