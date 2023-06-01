-- variable declaration and print value
set serveroutput on 
declare

book_name books.title%type;

begin

select title into book_name from books where book_id = 3;

dbms_output.put_line(book_name);

end;
/

--Insert and set default value
set serveroutput on
declare 
reqid NUMBER :=11;
bookid NUMBER :=9;
memberid NUMBER :=6;

begin
INSERT INTO BookRequests VALUES(reqid, bookid, memberid, TO_DATE('2022-03-25', 'YYYY-MM-DD'), 'Pending');
end;
/

--row type
set serveroutput on
declare 
bookrow books%rowtype;
begin
select book_id,title,author into bookrow.book_id,bookrow.title,bookrow.author from books where book_id=7;
dbms_output.put_line(bookrow.book_id || bookrow.title||bookrow.author);
end;
/

--cursor and rowcount
set serveroutput on
declare
cursor book_cursor is select book_id, title, author , publish_year from books;
book_row books%rowtype;
begin
open book_cursor;
fetch book_cursor into
book_row.book_id,book_row.title,book_row.author,book_row.publish_year;
while book_cursor%found loop
    
    dbms_output.put_line('book_id: '||book_row.book_id|| ' book_name:
    '||book_row.title || ' author: ' ||book_row.author|| ' publish year:
    '||book_row.publish_year);
    dbms_output.put_line('Row count: '|| book_cursor%rowcount);
    fetch book_cursor into
    book_row.book_id,book_row.title,book_row.author,book_row.publish_year;
end loop;
close book_cursor;
end;
/

--loop if else
declare
id int :=1;
cursor c is select book_id, title, author , publish_year from books;
book_row books%rowtype;
begin
open c;
fetch c into book_row.book_id,book_row.title,book_row.author,book_row.publish_year;
for x in 1 .. 5 loop
    if x = 3
    then dbms_output.put_line('id number 3');
    end if;
    dbms_output.put_line('book_id: '||book_row.book_id|| ' book_name:
    '||book_row.title || ' author: ' ||book_row.author|| ' publish year:
    '||book_row.publish_year);
    
    fetch c into book_row.book_id,book_row.title,book_row.author,book_row.publish_year;
    
end loop;
close c;
end;
/

--array and loop
set serveroutput on
declare
counter number;
book_name2 books.title%type;
TYPE NAMEARRAY IS VARRAY(5) OF books.title%type;
A_NAME NAMEARRAY:=NAMEARRAY();
begin
counter:=1;
for x in 1..5
loop
select title into book_name2 from books where book_id=x;
A_NAME.EXTEND();
A_NAME(counter):=book_name2;
counter:=counter+1;
end loop;
counter:=1;
WHILE counter<=A_NAME.COUNT
LOOP
DBMS_OUTPUT.PUT_LINE(A_NAME(counter));
counter:=counter+1;
END LOOP;
end;
/

--function
set SERVEROUTPUT on
create or replace function fun( id number) return varchar as 
title varchar(30);
begin
 select title into title from books where book_id = id;
 return title;
end;
/

set SERVEROUTPUT on
declare

begin
dbms_output.put_line(fun(3));  
end;
/

--procedure
set SERVEROUTPUT on
create or replace procedure proc( id number)  is 
title varchar(30);
begin
 select title into title from books where book_id = id;
 dbms_output.put_line(title);
end;
/

set SERVEROUTPUT on
declare
 id number := 4;
begin
    proc(id);
end;
/



