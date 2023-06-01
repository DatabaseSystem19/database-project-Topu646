
drop table borrowings;
drop table bookRequests;
drop table books;
drop table members;



CREATE TABLE Books (
    book_id INTEGER PRIMARY KEY,
    title VARCHAR(30),
    author VARCHAR(25),
    publisher VARCHAR(25),
    publish_year INTEGER,
    total_quantity INTEGER,
    available_quantity INTEGER
);

CREATE TABLE Members (
    member_id INTEGER PRIMARY KEY,
    first_name VARCHAR(15),
    last_name VARCHAR(15),
    email VARCHAR(35),
    phone VARCHAR(20),
    address VARCHAR(25)
);

CREATE TABLE Borrowings (
    borrowing_id INTEGER PRIMARY KEY,
    book_id INTEGER REFERENCES Books(book_id),
    member_id INTEGER REFERENCES Members(member_id),
    borrowing_date DATE,
    due_date DATE,
    return_date DATE
);

CREATE TABLE BookRequests (
    request_id INTEGER PRIMARY KEY,
    book_id INTEGER REFERENCES Books(book_id),
    member_id INTEGER REFERENCES Members(member_id),
    request_date DATE,
    status VARCHAR(15)
);



