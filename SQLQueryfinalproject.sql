create database finalproject ; 
use finalproject; 

CREATE TABLE Trainee (
    Train_ID INT PRIMARY KEY,
    email VARCHAR(100),
    name VARCHAR(50),
	Gender VARCHAR(10)CHECK (Gender IN ('Male', 'Female')),
    background  VARCHAR(100)
);
-- Create table for Trainer
CREATE TABLE Trainer (
    trainer_ID INT PRIMARY KEY,
    name VARCHAR(50),
    specialty VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100)
);
-- Create table for Course
CREATE TABLE Course (
    course_ID INT PRIMARY KEY,
    title VARCHAR(100),
    category VARCHAR(50),
    duartionhours INT,  -- assuming it's course duration in hours
    level VARCHAR(50)
);
-- Create table for Schedule
CREATE TABLE Schedule (
    schedule_ID INT PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    time_slot VARCHAR(50),
    course_ID INT,
    Traine_ID INT,
    FOREIGN KEY (course_ID) REFERENCES Course(course_ID),
    FOREIGN KEY (traine_ID) REFERENCES Trainer(trainer_ID), 
);
-- Create table for Enrollment
CREATE TABLE Enrollment (
    enr_ID INT PRIMARY KEY,
    enr_date DATE,
    Train_ID INT,
    course_ID INT,
    FOREIGN KEY (Train_ID) REFERENCES Trainee(Train_ID),
    FOREIGN KEY (course_ID) REFERENCES Course(course_ID)
); 

-- Insert Data: Trainee
INSERT INTO Trainee (Train_ID, name, gender, email, background) VALUES
(1, 'Aisha Al-Harthy', 'Female', 'aisha@example.com', 'Engineering'),
(2, 'Sultan Al-Farsi', 'Male', 'sultan@example.com', 'Business'),
(3, 'Mariam Al-Saadi', 'Female', 'mariam@example.com', 'Marketing'),
(4, 'Omar Al-Balushi', 'Male', 'omar@example.com', 'Computer Science'),
(5, 'Fatma Al-Hinai', 'Female', 'fatma@example.com', 'Data Science');
-- Insert Data: Trainer
INSERT INTO Trainer (trainer_id, name, specialty, phone, email) VALUES
(1, 'Khalid Al-Maawali', 'Databases', 96891234567, 'khalid@example.com'),
(2, 'Noura Al-Kindi', 'Web Development', 96892345678, 'noura@example.com'),
(3, 'Salim Al-Harthy', 'Data Science', 96893456789, 'salim@example.com');
-- Insert Data: Course
INSERT INTO Course (course_id, title, category, duartionhours, level) VALUES
(1, 'Database Fundamentals', 'Databases', 20, 'Beginner'),
(2, 'Web Development Basics', 'Web', 30, 'Beginner'),
(3, 'Data Science Introduction', 'Data Science', 25, 'Intermediate'),
(4, 'Advanced SQL Queries', 'Databases', 15, 'Advanced');
-- Insert Data: Schedule
INSERT INTO Schedule (schedule_id, course_id, Traine_ID, start_date, end_date, time_slot) VALUES
(1, 1, 1, '2025-07-01', '2025-07-10', 'Morning'),
(2, 2, 2, '2025-07-05', '2025-07-20', 'Evening'),
(3, 3, 3, '2025-07-10', '2025-07-25', 'Weekend'),
(4, 4, 1, '2025-07-15', '2025-07-22', 'Morning');
-- Insert Data: Enrollment
INSERT INTO Enrollment (enr_ID, Train_ID, course_id, enr_date) VALUES
(1, 1, 1, '2025-06-01'),
(2, 2, 1, '2025-06-02'),
(3, 3, 2, '2025-06-03'),
(4, 4, 3, '2025-06-04'),
(5, 5, 3, '2025-06-05'),
(6, 1, 4, '2025-06-06');


select * from Trainee 
select * from Trainer  
select * from Schedule
select * from Enrollment 
select * from Course 