

/* Create Table Individuals(
IndividualID int primary key (IndividualID) NOT NULL,
FirstName varchar(255) NOT NULL ,LastName varchar (255) NOT NULL,
Adress varchar (255) NOT NULL,
Phone varchar (255) Not NULL
); */

/*
Create Table GroupMembership(
GroupID int NOT NULL,
IndividualID int Foreign Key References Individuals(IndividualID) Not Null
); */

Create Table Groups(
GroupID int primary key (GroupID) Not Null,
GroupName varchar (255) Not NULL, 
Dues money Not Null
); 