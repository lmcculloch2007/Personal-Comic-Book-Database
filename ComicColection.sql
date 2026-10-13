create database if not exists ComicColection;

use ComicColection;

create table Comicbook
(
    ComicBookID varchar(20) PRIMARY KEY,
    ComicBookTitle varchar(100),
    ComicPublisher VarChar(15),
    ComicIssue int,
    ComicPrint int,
    ComicType Varchar(50)
);


create table Creator
(
    CreatorID VARCHAR(200) PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(250),
    CreatorRole VARCHAR(50)
);


create table ComicCreator(
    ComicBookID varchar(20),
     CreatorID VARCHAR(200),

    primary key(ComicBookID,CreatorID),

     FOREIGN KEY (ComicBookID) REFERENCES Comicbook(ComicBookID),
     FOREIGN KEY (CreatorID) REFERENCES Creator(CreatorID)
);


INSERT INTO ComicBook(ComicBookID, ComicBookTitle, ComicIssue,ComicPrint,ComicPublisher,ComicType)
VALUES

    ('CB001','Absolute Batman','15', '5','DC','Single'),
    ('CB002','Absolute Batman','16', '3','DC','Single'),
    ('CB003','Absolute Batman','17', '1','DC','Single'),
    ('CB004','Absolute Batman','18', '2','DC','Single'),
    ('CB005','Absolute Batman','19', '2','DC','Single'),
    ('CB006','Absolute Batman','20', '2','DC','Single'),
    ('CB007','Absolute Batman','21', '1','DC','Single'),
    ('CB008','Absolute Batman','22', '1','DC','Single'),
    ('CB009','Absolute Batman','23', '1','DC','Single'),
    ('CB010','Absolute Batman','25', '1','DC','Single'),
    ('CB011','Absolute Batman(Annual 2026', '1','4','DC','Single'),
    ('CB012', 'Absolute Batman Ark M', '1', '3','DC','Single');


Insert into Creator(CreatorID, FirstName, LastName, CreatorRole)
VALUES
    ('CR001','Scott', 'Snyder','Writer'),
    ('CR002','Marcos','Martin','Colorist'),
    ('CR003','Mark(Jock)','Simpson','Artist'),
    ('CR004','Nick','Dragotta','Artist'),
    ('CR005','Eric','Canete','Artist'),
    ('CR006','Werther', 'Dell`Edera', 'Artist');

INSERT Into ComicCreator(comicbookid, creatorid)
VALUES
    ('CB001','CR001'),
    ('CB002','CR002'),
    ('CB003','CR003'),
    ('CB004','CR004'),
    ('CB005','CR005'),
    ('CB006','CR006');


SELECT *
FROM Comicbook
WHERE ComicPublisher = 'DC'
  AND ComicBookTitle LIKE '%Absolute%'
ORDER BY ComicBookTitle ASC, ComicIssue ASC;

SHOW TABLES;

select * from Comicbook;
select * from Creator;
select * from ComicCreator;