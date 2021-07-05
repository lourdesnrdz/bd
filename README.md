# Databases
Database Fundamentals Course

## Table of contents

* [General info](#general-info) 
* [Technologies](#technologies) 
* [Setup](#setup)
* [Concepts](#concepts)

## General info
 On this course I learned the concepts of relational and non-relational databases. 
 
 How to create a ER diagram, transform it to a relational model and normalize it (passing from 1FN to 4FN.
 
 During the course we developed the project Platzi Blog, where I learned to create a database and use SQL queries to insert, access, modify and delete the data. Also implemented our project using a Non-Relational databse, for this we used Firestore. This helped me comprehend the difference between using a table structured database and using one based on documents.

## Technologies

On this course I used the following development technologies:
 <!-- - Visual Studio Code -->
 - Git
 - Github
 - MySQL Workbench
 - Firebase

## Setup

The setup for this project was made on a Windows 10 OS.

### MySQL Workbench
1. Go to [https://dev.mysql.com/downloads/windows/installer/5.6.html](https://dev.mysql.com/downloads/windows/installer/5.6.html) 
2. Select the Installer and click download
3. Click on  'No thanks, just start my download' and install the software.

### Firebase
To acces Firebase all you need is a Google Account. You can create a project and start using the Firestore DB with the following steps:
1. Go to [https://firebase.google.com/?hl=es](https://firebase.google.com/?hl=es) 
2. Select 'Go to console'
3. Create a new proyect
4. Go to Firestore Database on the menu and now you can start creating your DB

## Concepts

### DB: 
There are two types of databases:
* **Relational:** its organized in tables (columns, rows), based on files.
* **Non-Relational:** organized in documents, useful on squemas that update frequently.

### Relational DB Concepts
* **Entity:** represents anything of the real world.
    * **Strong Entity:** can exist on its own, represented by a single rectangle.
    * **Weak Entity:** depend on a string entity, represented by double rectangle.
* **Attribute:** are the essence of the entity, represented with a circle.
* **Primary Key:** attribute that identifies an entity, it's a unique value in all the database.
* **Foreign Key:** identifies a unique tuple of another table.
* **Relations:** allow us to associate one table with another, represented with a diamond.
* **Cardinality:** is the set of relationships in which two or more entities participate.
    * 0 - 1
    * 1 - 1
    * 0 - N
    * 1 - N
    * N - M
* **ER Diagram:** diagram that helps us represent our entities, their attributes and the relationship between entities.

### MySQL
* **DDL:** Data Defitnition Language, helps us create the sttructure of the database. 
    * **CREATE:**  create a new DB, table or squema.
    * **ALTER:** alter an existing table, column descriptions, etc.
    * **DROP:** delete existing objects fro the DB.
    * **TRUNCATE:** deletes all the records from a table, including the spaces assigned to the records. 
* **DML:** Data Maniputaltion Language, series of instructions that support the DB construction process.
    * **SELECT:** to obtain data from the DB. 
    * **INSERT:** to insert new records to an exisiting table.
    * **UPDATE:** to modify existing data from a table.
    * **DELETE:** to delete all the records of a table, this doesn't include the spaces assigned to them.

### Non-Relation DB Concepts
* **Key - Value oriented:** are ideal to store and obtain data with a unique key.
* **Based on Documents:** ideal to store data in JSON and XML format
* **Based on Graphs:** nodes or entities that have multiple relationships, related everyone with everyone.
* **Firebase (Firestore)** 
    * **Database:** contains all the information we want to store  
    * **Collection:** same as tables in relational databases, they are objects that group (Documents) the information to be saved.
        * **Top level Collections:**  they exist in the first level, recommended when you have separate entities that you are going to reference from many places.
        * **Subcollections:** they no longer live at the beginning ofthe DB, recommended when you need to do something intrinsic to te document.
    * **Documents:**  it is the information that you eant to save, they contain the data within them.


