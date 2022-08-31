----UC1----
create database AddressBookServiceDB

use AddressBookServiceDB


----UC2----
create table Addressbook
(
Id int Primary Key Identity (1,1),
FirstName VarChar (200),
LastName varchar(150),
Address varchar(250),
City varchar(25),
State varchar(60),
ZipCode int,
PhoneNumber Varchar(10),
Email varchar(150)
);

----UC3----
Insert into Addressbook Values ('Rajesh','yadav','Bemetara','Durg','Chhattisgarh',490022,'7898625487','Mohan321@gmail.com'),
('Pukesh','yadav','Berla','Durg','Chhattisgarh',542154,'8952241265','rajd99@gmail.com'),
('murali','Upadhyay','gondiya','mumbai','Maharastra',675438,'8757889475','mural001@gmail.com'),
('komal','patil','saibaba nagar','surat','gujarat',34567,'7854216785','komal222@gmail.com'),
('riya','khairnar','shiv nagar','jaipur','Rajasthan',432007,'7285108928','riya8993@gmail.com');

----UC4----
Update Addressbook Set City='Banglore',State='karnatak' where FirstName='murali';
Update Addressbook Set Address='bhilai',ZipCode='491335' where FirstName='riya';
select * from Addressbook

----UC5----
Delete from Addressbook where FirstName='riya';