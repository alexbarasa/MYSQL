create database student_performance_db;
use student_performance_db;

create table subjects (
subjectID int not null,
title varchar(100),
primary key (subjectID)
);

create table teachers (
teacherID int not null,
F_name varchar(50),
L_name varchar(50),
primary key (teacherID)
);

create table group_tbl(
groupID int,
groupName varchar(100),
primary key (groupID)
);

create table subjectTeacher(
subjectID int,
teacherID int,
groupID int,
primary key (subjectID, teacherID)
);

create table students (
studentID int not null,
F_name varchar(50),
L_name varchar(50),
groupID int,
primary key (studentID),
foreign key (groupID) references group_tbl (groupID)
);

create TABLE marks (
markID int NOT NULL,
studentID int,
subjectID int,
Date_taken date,
marks int,
primary key (markID),
foreign key (studentID) references students (studentID),
foreign key (subjectID) references subjects (subjectID)
);