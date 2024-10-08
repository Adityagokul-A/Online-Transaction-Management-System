CREATE TABLE SECURITY(
	USER_ID INT,
	ACC_NO VARCHAR(10),
	LOGIN_ID VARCHAR(10),
	PASSWORD VARCHAR(15),
	PRIMARY KEY(USER_ID,ACC_NO,LOGIN_ID)
);

INSERT INTO SECURITY VALUES(101,'A1000','AAA','a07yiot');
INSERT INTO SECURITY VALUES(102,'B1000','BBB','1290nnka');
INSERT INTO SECURITY VALUES(103,'C1000','CCC','mok7812');
INSERT INTO SECURITY VALUES(104,'D1000','DDD','aklido12');
INSERT INTO SECURITY VALUES(105,'E1000','EEE','saej3l09');

CREATE TABLE ACCOUNT(
	BALANCE INT,
	ACC_NO VARCHAR(10),
	HOLDER VARCHAR(15),
	DOB DATE,
	BANK VARCHAR(10),
	AADHAR_CARD VARCHAR(20),
	PRIMARY KEY(ACC_NO,AADHAR_CARD)
);

INSERT INTO ACCOUNT VALUES(10908,'A1000','Ajay',TO_DATE('1973-08-12','yyyy-mm-dd'),'SBI','190jk2381ndgj');
INSERT INTO ACCOUNT VALUES(19303,'B1000','Bob',TO_DATE('1966-11-30','yyyy-mm-dd'),'Kotak','kka99821331s');
INSERT INTO ACCOUNT VALUES(17951,'C1000','Calvin',TO_DATE('1988-01-23','yyyy-mm-dd'),'CUB','bhc891loijaz');
INSERT INTO ACCOUNT VALUES(26431,'D1000','Dev',TO_DATE('1989-03-01','yyyy-mm-dd'),'ICICI','90998yitgciom');
INSERT INTO ACCOUNT VALUES(90786,'E1000','Eliah',TO_DATE('1971-06-10','yyyy-mm-dd'),'SBI','iiqbbczx89kham');

CREATE TABLE PHONE_NO_ACC(
	PHONE_NO INT,
	AADHAR_CARD VARCHAR(20),
	ACC_NO VARCHAR(25),
	PRIMARY KEY(AADHAR_CARD,ACC_NO,PHONE_NO)
);

INSERT INTO PHONE_NO_ACC VALUES(9102234819,'A1000','190jk2381ndgj');
INSERT INTO PHONE_NO_ACC VALUES(8976271829,'B1000','kka99821331s');
INSERT INTO PHONE_NO_ACC VALUES(7862551788,'C1000','bhc891loijaz');
INSERT INTO PHONE_NO_ACC VALUES(9088273813,'D1000','90998yitgciom');
INSERT INTO PHONE_NO_ACC VALUES(6655443128,'E1000','iiqbbczx89kham');

CREATE TABLE HOLD(
	ACC_NO VARCHAR(25),
	AADHAR_CARD VARCHAR(20),
	USER_ID INT,
	PRIMARY KEY(ACC_NO,AADHAR_CARD,USER_ID)
);

INSERT INTO HOLD VALUES('A1000','190jk2381ndgj',101);
INSERT INTO HOLD VALUES('B1000','kka99821331s',102);
INSERT INTO HOLD VALUES('C1000','bhc891loijaz',103);
INSERT INTO HOLD VALUES('D1000','90998yitgciom',104);
INSERT INTO HOLD VALUES('E1000','iiqbbczx89kham',105);

CREATE TABLE USERS(
	USER_ID INT,
	EMAIL VARCHAR(25),
	PHONE_NO NUMBER(10),
	NAME VARCHAR(15),
	ACC_NO VARCHAR(25),
	PRIMARY KEY(USER_ID,ACC_NO)
);

INSERT INTO USERS VALUES(101,'ajay@gmail.com',9102234819,'Ajay','A1000');
INSERT INTO USERS VALUES(102,'bob@gmail.com',8976271829,'Bob','B1000');
INSERT INTO USERS VALUES(103,'calvin@outlook.com',7862551788,'Calvin','C1000');
INSERT INTO USERS VALUES(104,'dev@yahoo.com',9088273813,'Dev','D1000');
INSERT INTO USERS VALUES(105,'eliah1@hotmail.com',6655443128,'Eliah','E1000');

CREATE TABLE HAS_CONTACT(
	CONTACT_ID VARCHAR(5),
	USER_ID INT,
	ACC_NO VARCHAR(10),
	PRIMARY KEY(CONTACT_ID,USER_ID,ACC_NO)
);

INSERT INTO HAS_CONTACT VALUES ('101A',101,'A1000');
INSERT INTO HAS_CONTACT VALUES ('102B',102,'B1000');
INSERT INTO HAS_CONTACT VALUES ('103K',103,'C1000');
INSERT INTO HAS_CONTACT VALUES ('104J',104,'D1000');
INSERT INTO HAS_CONTACT VALUES ('105X',105,'E1000');

CREATE TABLE CONTACTS(
	CONTACT_ID VARCHAR(5),
	CONTACT_NAME VARCHAR(10),
	CPHONE_NO NUMBER(10),
	PRIMARY KEY(CONTACT_ID)
);

INSERT INTO CONTACTS VALUES ('101A','Kate',7080912783);
INSERT INTO CONTACTS VALUES ('102B','Jane',6879076432);
INSERT INTO CONTACTS VALUES ('103K','Liz',1237849300);
INSERT INTO CONTACTS VALUES ('104J','Patrick',9076543211);
INSERT INTO CONTACTS VALUES ('105X','Dave',5489067245);

CREATE TABLE TRANSACTS(
	TRANSACTION_ID INT,
	USER_ID INT,
	ACC_NO VARCHAR(10),
	PRIMARY KEY(TRANSACTION_ID,USER_ID,ACC_NO)
);

INSERT INTO TRANSACTS VALUES(1,101,'A1000');
INSERT INTO TRANSACTS VALUES(2,102,'B1000');
INSERT INTO TRANSACTS VALUES(3,103,'C1000');
INSERT INTO TRANSACTS VALUES(4,104,'D1000');
INSERT INTO TRANSACTS VALUES(5,105,'E1000');

CREATE TABLE PARTICIPATES(
	ACC_NO VARCHAR(10),
	AADHAR_CARD VARCHAR(20),
	TRANSACTION_ID INT,
	PRIMARY KEY(TRANSACTION_ID,AADHAR_CARD,ACC_NO)
);

INSERT INTO PARTICIPATES VALUES('A1000','190jk2381ndgj',1);
INSERT INTO PARTICIPATES VALUES('B1000','kka99821331s',2);
INSERT INTO PARTICIPATES VALUES('C1000','bhc891loijaz',3);
INSERT INTO PARTICIPATES VALUES('D1000','90998yitgciom',4);
INSERT INTO PARTICIPATES VALUES('E1000','iiqbbczx89kham',5);

CREATE TABLE TRANSACTIONS(
	TRANSACTION_ID INT,
	TRANSACTION_TS TIMESTAMP,
	ACC_FROM VARCHAR(10),
	ACC_TO VARCHAR(10),
	AMOUNT INT,
	PRIMARY KEY(TRANSACTION_ID)
);

INSERT INTO TRANSACTIONS VALUES(1,TO_TIMESTAMP('2003-04-12 11:23:35','yyyy-mm-dd hh24:mi:ss'),'A1000','B1000',100);
INSERT INTO TRANSACTIONS VALUES(2,TO_TIMESTAMP('2006-09-15 23:32:41','yyyy-mm-dd hh24:mi:ss'),'C1000','B1000',80);
INSERT INTO TRANSACTIONS VALUES(3,TO_TIMESTAMP('2011-12-17 09:11:19','yyyy-mm-dd hh24:mi:ss'),'A1000','E1000',160);
INSERT INTO TRANSACTIONS VALUES(4,TO_TIMESTAMP('2010-11-19 13:36:16','yyyy-mm-dd hh24:mi:ss'),'B1000','D1000',320);
INSERT INTO TRANSACTIONS VALUES(5,TO_TIMESTAMP('2007-02-21 05:55:42','yyyy-mm-dd hh24:mi:ss'),'E1000','C1000',500);

CREATE TABLE T_MODE(
	TRANSACTION_ID INT,
	METHOD_ID INT,
	SERVICE_PROVIDER VARCHAR(10),
	PRIMARY KEY(TRANSACTION_ID,METHOD_ID)
);

INSERT INTO T_MODE VALUES(1,1,'MASTERCARD');
INSERT INTO T_MODE VALUES(2,1,'RUPAY');
INSERT INTO T_MODE VALUES(3,2,'MASTERCARD');
INSERT INTO T_MODE VALUES(4,1,'MASTERCARD');
INSERT INTO T_MODE VALUES(5,2,'VISA');

CREATE TABLE METHOD_OF_PAYMENT(
	METHOD_ID INT,
	SERVICE_PROVIDER VARCHAR(10),
	METHOD_NAME VARCHAR(10),
	PRIMARY KEY(METHOD_ID,SERVICE_PROVIDER)
);
	
INSERT INTO METHOD_OF_PAYMENT VALUES(2,'MASTERCARD','Credit');
INSERT INTO METHOD_OF_PAYMENT VALUES(2,'VISA','Credit');
INSERT INTO METHOD_OF_PAYMENT VALUES(1,'MASTERCARD','Debit');
INSERT INTO METHOD_OF_PAYMENT VALUES(1,'VISA','Debit');
INSERT INTO METHOD_OF_PAYMENT VALUES(1,'RUPAY','Debit');

with trans_mode as (select * from transactions natural join method_of_payment) 
select transaction_id, to_char(transaction_ts,'yyyy-mm-dd') from trans_mode 
where method_name = 'Credit' group by transaction_id,transaction_ts;

Display all the transaction ids and date where the mode of payment was 'Credit'

with x as (
	select acc_from,count(*) as cnt from transactions group by acc_from 
	union all 
	select acc_to,count(*) as cnt from transactions group by acc_to
	), 
y as (select acc_from as acc,sum(cnt) from x group by acc_from having sum(cnt) > 2) 
select holder,bank from y inner join account on y.acc = account.acc_no;