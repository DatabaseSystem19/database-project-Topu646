INSERT INTO Books  VALUES (1, 'To Kill a Mockingbird', 'Harper Lee', 'J. B. Lippincott', 1960, 5, 2);
   INSERT INTO Books  VALUES   (2, '1984', 'George Orwell', 'Secker and Warburg', 1949, 3, 0);
   INSERT INTO Books  VALUES  (3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Charles Scribner''s Sons', 1925, 4, 4);
   INSERT INTO Books  VALUES  (4, 'Animal Farm', 'George Orwell', 'Secker and Warburg', 1945, 2, 2);
   INSERT INTO Books  VALUES  (5, 'Brave New World', 'Aldous Huxley', 'Chatto and Windus', 1932, 3, 3);
   INSERT INTO Books  VALUES (6, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', 1951, 6, 6);
   INSERT INTO Books  VALUES (7, 'The Lord of the Rings', 'J.R.R. Tolkien', 'George Allen and Unwin', 1954, 10, 8);
   INSERT INTO Books  VALUES (8, 'One Hundred Years of Solitude', 'Gabriel García Márquez', 'Editorial Sudamericana', 1967, 8, 5);
   INSERT INTO Books VALUES (9, 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', 1813, 5, 2);
   INSERT INTO Books VALUES (10, 'The Hobbit', 'J.R.R. Tolkien', 'George Allen ', 1937, 4, 3);
   
   
    INSERT INTO Members  VALUES(1, 'John', 'Doe', 'johndoe@example.com', '555-555-5555', '123 Main St.');
   INSERT INTO Members  VALUES (2, 'Jane', 'Doe', 'janedoe@example.com', '555-555-5555', '456 Oak St.');
   INSERT INTO Members  VALUES  (3, 'Bob', 'Smith', 'bobsmith@example.com', '555-555-5555', '789 Maple Ave.');
   INSERT INTO Members  VALUES  (4, 'Alice', 'Johnson', 'alicejohnson@example.com', '555-555-5555', '321 Elm St.');
   INSERT INTO Members  VALUES  (5, 'Tom', 'Wilson', 'tomwilson@example.com', '555-555-5555', '654 Pine St.');
   INSERT INTO Members  VALUES(6, 'Mary', 'Williams', 'marywilliams@example.com', '555-555-5555', '234 Elm St.');
INSERT INTO Members  VALUES (7, 'Michael', 'Brown', 'michaelbrown@example.com', '555-555-5555', '876 Maple Ave.');
INSERT INTO Members  VALUES  (8, 'Sarah', 'Green', 'sarahgreen@example.com', '555-555-5555', '123 Oak St.');
INSERT INTO Members  VALUES  (9, 'David', 'Jones', 'davidjones@example.com', '555-555-5555', '456 Main St.');
INSERT INTO Members  VALUES  (10, 'Emily', 'Davis', 'emilydavis@example.com', '555-555-5555', '789 Pine St.');



INSERT INTO Borrowings VALUES(1, 1, 1, TO_DATE('2022-02-15', 'YYYY-MM-DD'), TO_DATE('2022-03-15', 'YYYY-MM-DD'), NULL);
INSERT INTO Borrowings VALUES(2, 6, 2, TO_DATE('2022-02-20', 'YYYY-MM-DD'), TO_DATE('2022-03-20', 'YYYY-MM-DD'), NULL);
INSERT INTO Borrowings VALUES(3, 3, 3, TO_DATE('2022-02-25', 'YYYY-MM-DD'), TO_DATE('2022-03-25', 'YYYY-MM-DD'), NULL);
INSERT INTO Borrowings VALUES(4, 7, 4, TO_DATE('2022-03-01', 'YYYY-MM-DD'), TO_DATE('2022-04-01', 'YYYY-MM-DD'), NULL);
INSERT INTO Borrowings VALUES(5, 8, 5, TO_DATE('2022-03-05', 'YYYY-MM-DD'), TO_DATE('2022-04-05', 'YYYY-MM-DD'), NULL);
INSERT INTO Borrowings VALUES(6, 9, 6, TO_DATE('2022-03-10', 'YYYY-MM-DD'), TO_DATE('2022-04-10', 'YYYY-MM-DD'), NULL);
INSERT INTO Borrowings VALUES(7, 10, 7, TO_DATE('2022-03-15', 'YYYY-MM-DD'), TO_DATE('2022-04-15', 'YYYY-MM-DD'), NULL);
INSERT INTO Borrowings VALUES(8, 1, 8, TO_DATE('2022-03-20', 'YYYY-MM-DD'), TO_DATE('2022-04-20', 'YYYY-MM-DD'), NULL);
INSERT INTO Borrowings VALUES(9, 6, 9, TO_DATE('2022-03-25', 'YYYY-MM-DD'), TO_DATE('2022-04-25', 'YYYY-MM-DD'), NULL);
INSERT INTO Borrowings VALUES(10, 3, 10, TO_DATE('2022-04-01', 'YYYY-MM-DD'), TO_DATE('2022-05-01', 'YYYY-MM-DD'), NULL);


INSERT INTO BookRequests VALUES (1, 2, 1, TO_DATE('2022-02-10', 'YYYY-MM-DD'), 'Approved');
INSERT INTO BookRequests VALUES(2, 4, 2, TO_DATE('2022-02-15', 'YYYY-MM-DD'), 'Pending');
INSERT INTO BookRequests VALUES(3, 5, 3, TO_DATE('2022-02-20', 'YYYY-MM-DD'), 'Rejected');
INSERT INTO BookRequests VALUES(4, 6, 4, TO_DATE('2022-02-25', 'YYYY-MM-DD'), 'Approved');
INSERT INTO BookRequests VALUES(5, 1, 5, TO_DATE('2022-03-01', 'YYYY-MM-DD'), 'Pending');
INSERT INTO BookRequests VALUES(6, 7, 6, TO_DATE('2022-03-05', 'YYYY-MM-DD'), 'Approved');
INSERT INTO BookRequests VALUES(7, 8, 7, TO_DATE('2022-03-10', 'YYYY-MM-DD'), 'Pending');
INSERT INTO BookRequests VALUES(8, 9, 8, TO_DATE('2022-03-15', 'YYYY-MM-DD'), 'Rejected');
INSERT INTO BookRequests VALUES(9, 10, 9, TO_DATE('2022-03-20', 'YYYY-MM-DD'), 'Approved');
INSERT INTO BookRequests VALUES(10, 1, 10, TO_DATE('2022-03-25', 'YYYY-MM-DD'), 'Pending');

