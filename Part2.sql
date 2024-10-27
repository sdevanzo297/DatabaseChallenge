Create Table Book
(
	bookNumber INT;	
	title TEXT NOT NULL;
	ISBN INT NOT NULL;
	author VARCHAR NOT NULL;
	genre TEXT
  Primary Key (bookNumber, author);
)

Create Table Borrowers
(
	memberID INT NOT NULL;
	lastName VARCHAR NOT NULL;
	firstName VARCHAR NOT NULL;
	count INT 
  Primary Key (memberID, lastName, firstName);
)

Create Table CurrentLoan
(
	memberID INT NOT NULL;
	title TEXT NOT NULL;
	ISBN INT NOT NULL;
	author VARCHAR NOT NULL;
	copies INT;
	takenDate TIMESTAMP;
	dueDate TIMESTAMP 
 Primary Key (memberID); 
 Foreign Key (title) REFERENCES Book(title);
)

Create Table History
(
	memberID INT NOT NULL;
	title TEXT NOT NULL;
	author VARCHAR NOT NULL;
	notes TEXT;
 Primary Key (memberID, title);
 Foreign Key (title) REFERENCE Book(title);
)





	


