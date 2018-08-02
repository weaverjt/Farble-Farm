USE sequelize_fable;
INSERT INTO categories (catName) VALUES ("Fantasy");
INSERT INTO categories  (catName) VALUES ("Sci-fi");
INSERT INTO categories (catName) VALUES ("Horror");
INSERT INTO categories  (catName) VALUES ("Slice of life");
INSERT INTO categories (catName) VALUES ("Drama/Romance");
INSERT INTO categories (catName) VALUES ("Historical Fiction");
INSERT INTO categories  (catName) VALUES ("Mystery/Triller");
INSERT INTO categories (catName) VALUES ("Comedy");

INSERT INTO users (userName,userFirebase,imageURL) VALUES("ChrisHandsome","XPYu09HWP9RlsFFOCgLONJQIsWx1","<img : none>");
INSERT INTO users (userName,userFirebase,imageURL) VALUES("EdisonY ","lD5O4kT3TfhLVdUAyTbyfXkDSXh2","<img : none>");
INSERT INTO users (userName,userFirebase,imageURL) VALUES("Paul234","Z8c8voCMZuP0VwoTCUO1MD6TS2W2","<img : none>");
INSERT INTO users (userName,userFirebase,imageURL) VALUES("Danaerys","ZmW7Dh9ONhPcBgu9Cu3ab5N9Me82","<img : none>");
INSERT INTO users (userName,userFirebase,imageURL) VALUES("Clark865","6lO3OnVx68NrjP8FH467tXmCCrq2","<img : none>");
INSERT INTO users (userName,userFirebase,imageURL) VALUES("Billy5453","chN6TafIpGfVOFLfg7PtgdXd54q1","<img : none>");
INSERT INTO users (userName,userFirebase,imageURL) VALUES("John415","dqYf5tx97MRcHTZk9IQM9A2PLCp2","<img : none>");

-- INSERT INTO characters (charName,stories,userId) VALUES ("Hulk", "this is the story about Hulk",2);
-- INSERT INTO characters (charName,stories,userId) VALUES ("SpongeBob", "this is the story about SpongeBob",3);
-- INSERT INTO characters (charName,stories,userId) VALUES ("Bart Simpson", "this is the story about Bart Simpson",2);
-- INSERT INTO characters (charName,stories,userId) VALUES ("Dracula", "this is the story about Dracula",4);
-- INSERT INTO characters (charName,stories,userId) VALUES ("Mickey Mouse", "this is the story about Mickey Mouse",5);
-- INSERT INTO characters (charName,stories,userId) VALUES ("Donal Trump", "this is the story about Donald Trump",1);
-- INSERT INTO characters (charName,stories,userId) VALUES ("Magic Johnson", "this is the story about Magic Johnson",2);

INSERT INTO characters (charName,userId) VALUES ("Hulk",2);
INSERT INTO characters (charName,userId) VALUES ("SpongeBob",3);
INSERT INTO characters (charName,userId) VALUES ("Bart Simpson",2);
INSERT INTO characters (charName,userId) VALUES ("Dracula",4);
INSERT INTO characters (charName,userId) VALUES ("Mickey Mouse",5);
INSERT INTO characters (charName,userId) VALUES ("Donal Trump",1);
INSERT INTO characters (charName,userId) VALUES ("Magic Johnson",2);

INSERT INTO stories (title,settings,storyText,imageURL,iscompleted,categoryId,userId) VALUES ("This is Story #1","winter in northLands","Once upon a time there was...","none",False,2,2);
INSERT INTO stories (title,settings,storyText,imageURL,iscompleted,categoryId,userId) VALUES ("This is Story #2","On Planet Xzibit-1599","Once upon a time there was...","none",False,4,1);
INSERT INTO stories (title,settings,storyText,imageURL,iscompleted,categoryId,userId) VALUES ("This is Story #3","in Paris - 1948","Once upon a time there was...","none",False,5,1);
INSERT INTO stories (title,settings,storyText,imageURL,iscompleted,categoryId,userId) VALUES ("This is Story #4","Summer in the Dark alley","Once upon a time there was...","none",False,1,3);
INSERT INTO stories (title,settings,storyText,imageURL,iscompleted,categoryId,userId) VALUES ("This is Story #5","Raining under the bridge","Once upon a time there was...","none",False,1,4);
INSERT INTO stories (title,settings,storyText,imageURL,iscompleted,categoryId,userId) VALUES ("This is Story #6","Inside Peter's body","Once upon a time there was...","none",False,3,5);
INSERT INTO stories (title,settings,storyText,imageURL,iscompleted,categoryId,userId) VALUES ("This is Story #7","At the End of the world","Once upon a time there was...","none",False,2,5);
INSERT INTO stories (title,settings,storyText,imageURL,iscompleted,categoryId,userId) VALUES ("This is Story #8","At school during finals","Once upon a time there was...","none",False,4,2);
INSERT INTO stories (title,settings,storyText,imageURL,iscompleted,categoryId,userId) VALUES ("This is Story #9","At Lambeau Field","Once upon a time there was...","none",False,4,3);
INSERT INTO stories (title,settings,storyText,imageURL,iscompleted,categoryId,userId) VALUES ("This is Story #10","On my chair behind the castle","Once upon a time there was...","none",False,2,1);

INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #1",false,0,1,1);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #2",false,0,4,1);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #3",false,0,3,1);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #4",false,0,4,1);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #5",false,0,1,2);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #6",false,0,1,3);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #7",false,0,1,4);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #8",false,0,2,2);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #9",false,0,3,2);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #10",false,0,5,2);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #11",false,0,4,3);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #12",false,0,2,3);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #13",false,0,4,5);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #14",false,0,5,6);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #15",false,0,3,5);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #16",false,0,2,5);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #17",false,0,1,6);
INSERT INTO fragments(fragmentText,status,previousId,userId,StoryId) VALUES ("this is my contribution #18",false,0,1,7);

insert into users (userName,userFirebase) values ("billy","0nlF0TcYjBgXIMAEkSLr4xpr4vr1");
select * from fragments;
select * from characters;
select * from stories;
select * from users;
<<<<<<< HEAD
=======

-- select * from users where userFirebase="0nlF0TcYjBgXIMAEkSLr4xpr4vr1";
-- select * from users;

>>>>>>> 8488d05dbafc92d653545fbb6d006ec5b2c75380
