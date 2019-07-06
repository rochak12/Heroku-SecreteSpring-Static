CREATE TABLE highlight (
    highlight_id         serial,           -- unique id of the table
    novel_id        int,           -- different scripture book
    book_id         int,           -- book inside different scripture
    chapter         int,          -- chapter inside book
    verse           int,
    scripture      varchar(1000),
    primary KEY (highlight_id)
);

ALTER TABLE highlight 
ADD username VARCHAR(50);

CREATE TABLE novel (
    novel_id        int,
    name_novel      VARCHAR(50),      -- like BOM, OT
    PRIMARY KEY (novel_id)
);

CREATE TABLE book (                            --like nephi, issaiah
   book_id     int,                              
   name_book   VARCHAR(50),
   PRIMARY KEY (book_id)
);

-- delete from highlight where novel_id =1 and book_id = 1 and chapter = 1 and verse = 18;
INSERT INTO highlight (novel_id, book_id, chapter, verse, scripture)
    VALUES (1, 1, 1, 18, 'Therefore, I would that ye should know, that after the Lord had shown so many marvelous things unto my father, Lehi, yea, concerning the destruction of Jerusalem' );

insert into highlight (novel_id, book_id, chapter, verse, scripture) values 
              (1, 1, 1, 15, 'content');

-- INSERT INTO novel
--    VALUES (1, 'Book of Mormon');

SELECT * FROM highlight
    ORDER BY book_id;

select * from book;
select * from novel;

SELECT * FROM highlight ;
SELECT * FROM book where name_book = '1 Nephi';

insert into book values (1, '1 Nephi');
insert into book values (2, '2 Nephi');
insert into book values (3,  'Jacob');
insert into book values (4, 'Enos');
insert into book values (5, 'Jarom');
insert into book values (6, 'Omni');
insert into book values (7, 'Words of Mormon');
insert into book values (8, 'Mosiah');
insert into book values (9, 'Alma');
insert into book values (10, 'Helaman');
insert into book values (11, '3 Nephi');
insert into book values (12, '4 Nephi');
insert into book values (13, 'Mormon');
insert into book values (14, 'Ether');
insert into book values (15, 'Moroni');

 drop TABLE highlight;


CREATE TABLE userInfo (
  id serial,
  PRIMARY key (id),
  user_id  VARCHAR(100),
  user_password VARCHAR(100)
)

SELECT * from userInfo;
Insert into userInfo (user_id, user_password) values ('email', 'passwordHash')
