create  TABLE topic (
    id int,
    name VARCHAR(500),
    primary key (id)
);


INSERT INTO topic VALUES (1, 'faith');
INSERT INTO topic VALUES (2, 'sacrifice');
INSERT INTO topic VALUES (3, 'charity');


create table topic_scriptures (
    id  serial,
    PRIMARY key (id),
    topicID int,
    FOREIGN KEY (topicID) REFERENCES Scriptures(id),
    ScripturesID int,
    FOREIGN KEY (ScripturesID) REFERENCES Scriptures(id) 
);

alter table topic_scriptures
modify column id auto_increment;


ALTER table topic_Scriptures
   add topicID int;

ALTER table topic_Scriptures
   -- add topicID int,
    add FOREIGN KEY (topicID) REFERENCES topic(id) ;

SELECT * from topic_scriptures;
SELECT * from topic;
INSERT INTO topic_scriptures (topicid, scripturesid) VALUES (1, 4);


--Drop table topic_scriptures;