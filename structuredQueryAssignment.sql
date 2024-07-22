CREATE DATABASE fitness_center;
USE fitness_center;

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members
VALUES (1, "Bobby", 32);

INSERT INTO Members
VALUES (2, "Jimmy", 27);

INSERT INTO Members
VALUES (3, "Billy", 35);

INSERT INTO Members
VALUES (4, "Tommy", 41);

INSERT INTO WorkoutSessions
VALUES (1, 3, "2024-07-23", 430, "Cardio") ;

INSERT INTO WorkoutSessions
VALUES (2, 1, "2024-07-23", 500, "Weightlifting") ;

INSERT INTO WorkoutSessions
VALUES (3, 4, "2024-07-23", 530, "Cardio") ;

INSERT INTO WorkoutSessions
VALUES (4, 2, "2024-07-23", 600, "Weightlifting") ;

UPDATE WorkoutSessions
SET session_time = 630 
WHERE session_id = 4;

DELETE FROM WorkoutSessions
WHERE member_id = 1;

DELETE FROM Members
WHERE id = 1;

SELECT * FROM WorkoutSessions;

SELECT * FROM Members;