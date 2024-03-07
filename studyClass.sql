CREATE TABLE author(
    authorID int NOT NULL,
    authorFirstName varchar(255),
    authorLastName varchar(255),
    authorNationality varchar(255),
    PRIMARY KEY (authorID)
);

CREATE TABLE book(
    bookID int NOT NULL,
    authorID int,
    bookTitle varchar(255),
    genre varchar(255),
    PRIMARY KEY (bookID),
    FOREIGN KEY (authorID) REFERENCES author(authorID)
);

CREATE TABLE borrower(
    borrowID int NOT NULL,
    clientID int,
    bookID int,
    borrowDate DATE,
    FOREIGN KEY (clientID) REFERENCES client(clientID),
    FOREIGN KEY (bookID) REFERENCES book(bookID)
);

CREATE TABLE client(
    clientID int NOT NULL,
    clientFirstName varchar(255),
    clientLastName varchar(255),
    clientDOB DATE,
    occupation varchar(255),
    FOREIGN KEY (borrowID) REFERENCES borrower(borrowID)
);

