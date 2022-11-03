CREATE TABLE CUSTOMER(
	CUSTOMER_ID NUMBER(2),
	FIRST_NAME VARCHAR2(10),
	LAST_NAME VARCHAR2(10),
	GENDER CHAR(1),
	PHONE CHAR(10),
	EMAIL VARCHAR2(20),
	CONSTRAINT UQ_CUSTOMER_EMAIL UNIQUE(EMAIL),
	CONSTRAINT UQ_CUSTOMER_PHONE UNIQUE(PHONE),
	CONSTRAINT PK_CUSTOMER PRIMARY KEY(CUSTOMER_ID)
)
/

INSERT INTO CUSTOMER
VALUES(11, 'ARPAN', 'GHOSH', 'M', '7596847274', 'a@gmail.com')
/
INSERT INTO CUSTOMER
VALUES(12, 'ANKITA', 'DE', 'F', '7596847275', 'b@gmail.com')
/
INSERT INTO CUSTOMER
VALUES(13, 'DIPIKA', 'MONDOL', 'F', '7596847276', 'c@gmail.com')
/

CREATE TABLE BOOK(
	BOOK_ID NUMBER(2) CONSTRAINT PK_BOOK PRIMARY KEY,
	BOOK_NAME VARCHAR2(20) CONSTRAINT NN_BOOK_NAME NOT NULL,
	PAGE_COUNT NUMBER(5),
	STOCK NUMBER(7),
	PRICE NUMBER(9, 2) CONSTRAINT NN_BOOK_PRICE NOT NULL
)
/

INSERT INTO BOOK
VALUES(21, 'JAVA-A', 1200, 120, 850)
/
INSERT INTO BOOK
VALUES(22, 'CPP-A', 800, 75, 670)
/
INSERT INTO BOOK
VALUES(23, 'PYTHON-A', 1300, 195, 1250)
/
INSERT INTO BOOK
VALUES(24, 'JAVA-B', 1000, 90, 780)
/
INSERT INTO BOOK
VALUES(25, 'ORACLE-A', 950, 50, 990)
/

CREATE TABLE AUTHOR(
	AUTHOR_ID NUMBER(2),
	AUTHOR_NAME VARCHAR(20),
	AUTHOR_EMAIL VARCHAR(20)
)
/

ALTER TABLE AUTHOR ADD(
	CONSTRAINT PK_AUTHOR PRIMARY KEY(AUTHOR_ID),
	CONSTRAINT UQ_AUTHOR_NAME UNIQUE(AUTHOR_NAME),
	CONSTRAINT UQ_AUTHOR_EMAIL UNIQUE(AUTHOR_EMAIL)
)
/

INSERT INTO AUTHOR
VALUES(31, 'AMITAVA', 'd@gmail.com')
/
INSERT INTO AUTHOR
VALUES(32, 'ANIKET', 'e@gmail.com')
/

CREATE TABLE BOOK_AUTHOR(
	BOOK_ID NUMBER(2),
	AUTHOR_ID NUMBER(2),
	CONSTRAINT FK_BA_BID FOREIGN KEY(BOOK_ID)
	REFERENCES BOOK(BOOK_ID) ON DELETE CASCADE,
	CONSTRAINT FK_BA_AID FOREIGN KEY(AUTHOR_ID)
	REFERENCES AUTHOR(AUTHOR_ID) ON DELETE SET NULL
)
/

INSERT INTO BOOK_AUTHOR
VALUES(21, 31);
INSERT INTO BOOK_AUTHOR
VALUES(22, 31);
INSERT INTO BOOK_AUTHOR
VALUES(23, 31);
INSERT INTO BOOK_AUTHOR
VALUES(24, 32);
INSERT INTO BOOK_AUTHOR
VALUES(25, 31);
INSERT INTO BOOK_AUTHOR
VALUES(25, 32);
