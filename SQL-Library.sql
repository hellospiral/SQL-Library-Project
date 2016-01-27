CREATE DATABASE Library
GO

USE Library

CREATE TABLE BOOK
(
BookId int PRIMARY KEY NOT NULL, 
Title nvarchar(50) NOT NULL,
PublisherName nvarchar(30)
)

CREATE TABLE Book_Authors 
(
BookId int PRIMARY KEY NOT NULL,
AuthorName nvarchar(80) NOT NULL
)

CREATE TABLE PUBLISHER
(
Name nvarchar(30) PRIMARY KEY,
[Address] nvarchar(100),
Phone nvarchar(12)
)

CREATE TABLE BOOK_COPIES
(
BookId int NOT NULL,
BranchId nvarchar(30) NOT NULL,
No_Of_Copies int
)

CREATE TABLE BOOK_LOANS
(
BookId int,
BranchId nvarchar(30) NOT NULL,
CardNo int NOT NULL,
DateOut nvarchar(12),
DueDate nvarchar(12)
)

CREATE TABLE LIBRARY_BRANCH	
(
BranchId nvarchar(30) PRIMARY KEY NOT NULL,
BranchName nvarchar(30),
[Address] nvarchar(100)
) 

CREATE TABLE BORROWER
(
CardNo int PRIMARY KEY NOT NULL,
Name nvarchar(80),
[Address] nvarchar(100),
Phone nvarchar(12)
)

USE Library

INSERT INTO BOOK
VALUES (1, 'Where is my Doggy?', 'Harper Collins'),
	(2, 'I am a Robot', 'Penguin'),
	(3, 'Internet Man', 'MIT Press'),
	(4, 'The Lost Tribe', 'Random House'),
	(5, 'Who Moved my Cheese?', 'Verso'),
	(6, 'The Guy who Sounded Strange', 'ATOM'),
	(7, 'A Moveable Feast', 'Harper Collins'),
	(8, 'Interesting Things About Me', 'Pearson'),
	(9, 'Some Ideas Regarding Form', 'MIT Press'),
	(10, 'Another Conceivable Concept', 'Free Press'),
	(11, 'Meaningful Definitions of Ideas', 'Verso'),
	(12, 'Arbitrary Assertions of Theory', 'Harvard University Press'),
	(13, 'A Guy Looked at me Today', 'Hyperion'),
	(14, 'Weird Notions of Truth', 'Pearson'),
	(15, '25 Great Breakfasts', 'Penguin'),
	(16, 'How to Be a Great Human', 'Harper Collins'),
	(17, 'The Greatest Story Never Sold', 'Hyperion'),
	(18, 'The Difference Between Something and Nothing', 'Free Press'),
	(19, 'Seventeen Ways of Channeling the Cosmos', 'NYRB Classics'),
	(20, 'Why Are You Following Me?', 'Penguin')

INSERT INTO Book_Authors 
VALUES (1, 'Scott Goodwin')

INSERT INTO Book_Authors
VALUES (2, 'Bob Smith'),
	(3, 'James Slimstradlatler')
	
INSERT INTO Book_Authors 
VALUES (4, 'William James'),
	(5, 'Molly Curtin'),
	(6, 'Rae Armantrout'),
	(7, 'Stephen King'),
	(8, 'Donald Trump'),
	(9, 'Joseph Cronopolis'),
	(10, 'Barbara Vanderslice'),
	(11, 'Joey Rhu'),
	(12, 'James Slimstradlatler'),
	(13, 'Anne Jarvis'),
	(14, 'Rae Armantrout'),
	(15, 'Arnold Desplechin'),
	(16, 'Plato'),
	(17, 'Bradley Cooper'),
	(18, 'Manuel DeLanda'),
	(19, 'Brian Greene'),
	(20, 'Larles in Charge')

INSERT INTO PUBLISHER
VALUES ('Penguin', '123 West 10th St New York, NY', '206-910-0068')

INSERT INTO PUBLISHER
VALUES ('Random House', '444 E Broad St New York, NY', '444-224-2434'),
	('Harper Collins', '238 W Broadway New York, NY', '234-543-2545'),
	('MIT Press', '834 N Flat St Boston, MA', '834-222-4343'),
	('Verso', '838 SE Division St Portland, OR', '503-343-3434'),
	('ATOM', '838 N Kilp St London, UK', '1-33-232-123'),
	('Pearson', '939 W Empress St London, UK', '1-33-432-143'),
	('Free Press', '9 West Ave Bakersfield, MO', '433-545-6543'),
	('Harvard University Press', '55 N State Ave Boston, MA', '834-522-9642'),
	('Hyperion', '54 W 5th Ave New York, NY', '931-431-2456'),
	('NYRB Classics', '43 W Houston St New York, NY', '931-234-5364')


INSERT INTO BOOK_COPIES
VALUES (1, 'SHA', 5),
	(2, 'CEN', 3),
	(3, 'NW', 2),
	(4, 'CEN', 2),
	(5, 'NW', 3),
	(6, 'EA', 2),
	(7, 'SHA', 2),
	(8, 'CEN', 3),
	(9, 'NW', 4),
	(10, 'CEN', 2),
	(11, 'SHA', 3),
	(12, 'W', 2),
	(13, 'EA', 2),
	(14, 'SHA', 2),
	(15, 'CEN', 3),
	(16, 'W', 2),
	(17, 'CEN', 3),
	(18, 'CEN', 2),
	(19, 'SHA', 2),
	(20, 'W', 3),
	(2, 'SHA', 2),
	(4, 'SHA', 4),
	(6, 'SHA', 2),
	(8, 'SHA', 2),
	(5, 'CEN', 3),
	(7, 'CEN', 3),
	(9, 'CEN', 3),
	(1, 'NW', 3),
	(2, 'NW', 3),
	(4, 'NW', 2),
	(10, 'NW', 3),
	(12, 'NW', 3),
	(14, 'NW', 2),
	(15, 'NW', 3),
	(17, 'NW', 2),
	(19, 'NW', 2),
	(20, 'EA', 2),
	(19, 'EA', 3),
	(18, 'EA', 2),
	(17, 'EA', 2),
	(16, 'EA', 2),
	(15, 'EA', 4),
	(14, 'EA', 3),
	(12, 'EA', 5),
	(1, 'W', 3),
	(2, 'W', 2),
	(3, 'W', 4),
	(4, 'W', 4),
	(5, 'W', 3),
	(6, 'W', 3),
	(7, 'W', 4)


INSERT INTO BORROWER
VALUES (1, 'Mike Smith', '123 S Banks St', '555-343-2454'),
	(2, 'Bob Jones', '431 S Blip St', '848-134-4343'),
	(3, 'Wallaby Plest', '873 N Tilp St', '999-134-3434'),
	(4, 'Jonathan Googert', '962 S Deacon Ave', '343-134-5353'),
	(5, 'Brenda Lambert', '444 NW Fulton Ave', '411-244-5424'),
	(6, 'Amanda Walbert', '951 E Derv Road', '931-434-1411'),
	(7, 'Kiki Smith', '666 Mason Ave', '414-555-1353'),
	(8, 'Spencer Doran', '8 North Mind Ave', '031-535-6431')


INSERT INTO LIBRARY_BRANCH
VALUES ('SHA', 'Sharpstown', '864 S Turtle St'),
	('CEN', 'Central', '888 Main St'),
	('NW', 'NorthWest', '324 NW Hoover Blvd'),
	('EA', 'East', '343 E Blifold St'),
	('W', 'West', '244 W Hilson Blvd')


INSERT INTO BOOK_LOANS
VALUES (1, 'CEN', 5, '11/23/15', '12/22/15')

INSERT INTO BOOK_LOANS
VALUES (2, 'SHA', 3, '10/22/15', '01/03/16'),
	(18, 'W', 8, '9/14/15', '11/22/15'),
	(15, 'EA', 4, '10/31/15', '12/31/15'),
	(12, 'CEN', 5, '12/02/15', '02/02/16'),
	(11, 'CEN', 3, '11/01/15', '01/01/16'),
	(20, 'CEN', 3, '11/01/15', '01/01/16'),
	(4, 'NW', 2, '9/24/15', '12/12/15'),
	(2, 'W', 5, '10/14/15', '12/14/15'),
	(1, 'SHA', 5, '11/24/15', '01/24/16'),
	(6, 'W', 6, '11/15/15', '01/15/16'),
	(7, 'W', 3, '10/15/15', '12/15/15'),
	(8, 'W', 3, '10/15/15', '12/15/15'),
	(9, 'W', 3, '10/15/15', '12/15/15'),
	(11, 'W', 3, '10/15/15', '12/15/15'),
	(14, 'CEN', 5, '11/11/15', '01/11/16'),
	(18, 'CEN', 5, '11/11/15', '01/11/16'),
	(20, 'CEN', 5, '11/11/15', '01/11/16'),
	(3, 'CEN', 5, '11/11/15', '01/11/16'),
	(6, 'CEN', 5, '11/11/15', '01/11/16'),
	(1, 'EA', 8, '12/14/15', '02/14/16'),
	(1, 'SHA', 7, '11/14/15', '01/14/16'),
	(1, 'W', 6, '10/12/15', '12/12/15'),
	(3, 'SHA', 4, '10/11/15', '12/11/15'),
	(7, 'SHA', 4, '10/11/15', '12/11/15'),
	(8, 'SHA', 4, '10/11/15', '12/11/15'),
	(19, 'W', 2, '9/23/15', '11/23/15'),
	(18, 'EA', 6, '10/15/15', '12/15/15'),
	(16, 'NW', 7, '11/12/15', '01/12/16'),
	(15, 'CEN', 8, '12/01/15', '02/01/16'),
	(14, 'SHA', 5, '11/11/15', '01/11/16'),
	(20, 'CEN', 4, '12/02/15', '02/02/16'),
	(3, 'W', 2, '9/01/15', '11/01/15'),
	(4, 'EA', 2, '10/16/15', '12/16/15'),
	(6, 'NW', 6, '11/22/15', '12/22/15'),
	(8, 'CEN', 8, '11/12/15', '01/12/16'),
	(10, 'SHA', 7, '11/01/15', '01/01/16'),
	(9, 'NW', 2, '12/01/15', '02/01/16'),
	(2, 'EA', 5, '08/12/15', '10/12/15'),
	(4, 'W', 8, '09/11/15', '02/01/23'),
	(9, 'CEN', 3, '14/15/25', '12/53/12'),
	(13, 'SHA', 5, '14/53/23', '12/53/13'),
	(14, 'CEN', 4, '12/31/24', '14/12/12'),
	(15, 'SHA', 2, '12/12/11', '12/32/12'),
	(5, 'CEN', 3, '12/31/23', '11/15/15'),
	(6, 'SHA', 4, '12/13/15', '12/31/23'),
	(7, 'NW', 5, '12/16/15', '12/15/14')
	
INSERT INTO BOOK_LOANS
VALUES (2, 'W', 2, '12/32/12', '12/32/23'),
	(18, 'EA', 2, '12/31/12', '11/13/13'),
	(20, 'CEN', 4, '11/11/11', '12/12/12')



--1. How many copies of the book titled The Lost Tribe are owned by the library branch whose name
--is "Sharpstown"?


SELECT LB.BranchName, B.BookId, BC.No_Of_Copies, B.Title
FROM LIBRARY_BRANCH As LB INNER JOIN BOOK_COPIES As BC
ON LB.BranchId = BC.BranchId
INNER JOIN BOOK As B
ON BC.BookId = B.BookId
WHERE B.BookId = 4
And BC.BranchId = 'SHA'

--2. How many copies of the book titled The Lost Tribe are owned by each library branch?

SELECT LB.BranchName, B.BookId, BC.No_Of_Copies, B.Title
FROM LIBRARY_BRANCH As LB INNER JOIN BOOK_COPIES As BC
ON LB.BranchId = BC.BranchId
INNER JOIN BOOK As B
ON BC.BookId = B.BookId
WHERE B.BookId = 4


--3. Retrieve the names of all borrowers who do not have any books checked out.

SELECT *
FROM BORROWER As Bor LEFT OUTER JOIN BOOK_LOANS As BL
ON Bor.CardNo = BL.CardNo
WHERE BL.BookId IS NULL

--4. For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today,
--retrieve the book title, the borrower's name, and the borrower's address

SELECT B.Title, Bor.Name, Bor.Address, BL.DueDate
FROM BOOK_LOANS As BL INNER JOIN BOOK As B
On BL.BookId = B.BookId
INNER JOIN BORROWER As Bor
ON BL.CardNo = Bor.CardNo
WHERE DueDate = '12/11/15'
AND BranchId = 'SHA'


--5. For each library branch, retrieve the branch name and the total number of books loaned out from
--that branch.


CREATE PROC NoOfBooksOut @Branch nvarchar(30)
AS
	SELECT * 
	FROM LIBRARY_BRANCH As LB INNER JOIN BOOK_LOANS As BL
	ON LB.BranchId = BL.BranchId
	WHERE BL.BranchId = @Branch
GO

EXEC NoOfBooksOut @Branch = 'NW'


--7. For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of
--copies owned by the library branch whose name is "Central"

SELECT B.Title, BC.No_Of_Copies
FROM Book_Authors As BA INNER JOIN BOOK As B
ON BA.BookId = B.BookId
INNER JOIN BOOK_COPIES As BC
ON B.BookId = BC.BookId
WHERE AuthorName = 'Stephen King'
AND BC.BranchId = 'CEN'