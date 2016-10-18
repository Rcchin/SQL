CREATE TABLE WritingGroups
  (
  GroupName    VARCHAR(20)     NOT NULL,
  HeadWriter VARCHAR(15) NOT NULL,
  YearFormed VARCHAR(4) NOT NULL,
  Subject VARCHAR(10) NOT NULL,
      
  CONSTRAINT pk_WritingGroups PRIMARY KEY (GroupName)
  );
CREATE TABLE Publishers
  (
  pub_name VARCHAR(20) NOT NULL,
  pub_address    VARCHAR(15) ,
  pub_phone    VARCHAR(10),
  pub_email  VARCHAR(30),
  CONSTRAINT pk_publishers PRIMARY KEY (pub_name)
  );
  
CREATE TABLE Book
  (
  title_name VARCHAR(40)  NOT NULL,
  pub_name VARCHAR(20) NOT NULL,
  GroupName VARCHAR(20) NOT NULL,
  pub_year VARCHAR(4) NOT NULL,
  pages      VARCHAR(4) NOT NULL,
  CONSTRAINT pk_titles PRIMARY KEY (title_name)
  );
 ALTER TABLE Book
          ADD CONSTRAINT book_writing_groups_fk
          FOREIGN KEY (GroupName)
          REFERENCES WritingGroups (GroupName);
 ALTER TABLE Book
          ADD CONSTRAINT book_publishers_fk
          FOREIGN KEY (pub_name)
          REFERENCES Publishers (pub_name);  
INSERT INTO WritingGroups VALUES ('Writer Wannabees', 'Erika Davis', '1997', 'Romance');
INSERT INTO WritingGroups VALUES ('Writing Queens', 'Jeff Hornacek', '2001', 'Comedy');
INSERT INTO WritingGroups VALUES ('Creative Writers', 'Derek Fisher', '2007', 'Action');
INSERT INTO WritingGroups VALUES ('Writing Kings', 'Rick Fox', '1999', 'Sci-Fi');
INSERT INTO WritingGroups VALUES ('Writers Offense', 'Anthony Davis', '2010', 'Horror');
INSERT INTO Publishers VALUES ('Jimmy Butler', '806 Huron Dr','7144344342', 'jbutlerbulls@yahoo.com');
INSERT INTO Publishers VALUES ('Jordan Clarkson', '226 Aladdrin Dr','9493214142', 'jclarkson@gmail.com');
INSERT INTO Publishers VALUES ('Julius Randle', '983 Sucio St','6264389765', 'jrandle@yahoo.com');
INSERT INTO Publishers VALUES ('Calvin Wann', '321 Limpio Dr','3434849236', 'calvinwann@yahoo.com');
INSERT INTO Publishers VALUES ('Adrian Tran', '453 Atherton Dr','7145412553', 'adriantran96@gmail.com');
INSERT INTO Book VALUES ('Gone With The Wind', 'Jimmy Butler', 'Writer Wannabees', '2008', '199');
INSERT INTO Book VALUES ('The Last Airbender', 'Jordan Clarkson', 'Writing Queens', '2012', '122');
INSERT INTO Book VALUES ('The Book Thief', 'Julius Randle', 'Creative Writers', '2003', '233');
INSERT INTO Book VALUES ('Dark Matter', 'Calvin Wann', 'Writing Kings', '2002', '109');
INSERT INTO Book VALUES ('Love Warrior', 'Adrian Tran', 'Writers Offense', '2015', '632');