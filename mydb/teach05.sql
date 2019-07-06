CREATE TABLE Scriptures (
  book VARCHAR(255),
  chapter VARCHAR(255),
  verse INT,
  CONTENT VARCHAR(1000),
   id SERIAL,
  PRIMARY KEY (id)
);

INSERT INTO Scriptures (book, chapter, verse, CONTENT) VALUES ('john', '1', '5', 'Antything ypou want to keep');
INSERT INTO Scriptures (book, chapter, verse, CONTENT) VALUES ('D&C', '88', '49', 'Its D&C content second' );
INSERT INTO Scriptures (book, chapter, verse, CONTENT) VALUES ('D&C', '93', '28', 'D&C content third');
INSERT INTO Scriptures (book, chapter, verse, CONTENT) VALUES ('Mosiah', '16', '9', 'sdvasjvjscj');

SELECT * FROM scriptures;
insert into Scriptures (book, chapter, verse, content) values ('book', 'chapter', 66 , 'content');

select * from scriptures where id = 5;



