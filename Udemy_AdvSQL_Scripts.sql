CREATE TABLE CUSTOMER
( CUSTOMER_ID NUMBER,
FIRST_NAME VARCHAR2(50),
LAST_NAME VARCHAR2(50),
MIDDLE_NAME VARCHAR2(50),
ADDRESS_LINE1 VARCHAR2(80),
ADDRESS_LINE2 VARCHAR2(80),
CITY VARCHAR2(40),
COUNTRY VARCHAR2(50),
DATE_ADDED DATE,
REGION VARCHAR2(10)
);
CREATE TABLE PRODUCT
( PRODUCT_ID NUMBER,
PRODUCT_NAME VARCHAR2(100),
STANDARD_COST NUMBER(10,2),
COLOR VARCHAR2(20),
LIST_PRICE NUMBER(10,2),
PRODUCT_SIZE NUMBER(8,2),
WEIGHT NUMBER(10,2),
PRODUCT_CATEGORY VARCHAR2(20)
);
CREATE TABLE SALES
( SALES_DATE DATE,
ORDER_ID NUMBER,
PRODUCT_ID NUMBER,
CUSTOMER_ID NUMBER(5,0),
SALESPERSON_ID NUMBER(5,0),
QUANTITY NUMBER(4,0),
UNIT_PRICE NUMBER(10,2),
SALES_AMOUNT NUMBER(10,2),
TAX_AMOUNT NUMBER(10,2),
TOTAL_AMOUNT NUMBER(10,2)
);
CREATE TABLE SALES_HISTORY
( SALES_DATE DATE,
ORDER_ID NUMBER,
PRODUCT_ID NUMBER,
CUSTOMER_ID NUMBER(5,0),
SALESPERSON_ID NUMBER(5,0),
QUANTITY NUMBER(4,0),
UNIT_PRICE NUMBER(10,2),
SALES_AMOUNT NUMBER(10,2),
TAX_AMOUNT NUMBER(10,2),
TOTAL_AMOUNT NUMBER(10,2)
);
CREATE TABLE SALESPERSON
( SALESPERSON_ID NUMBER,
JOB_TITLE VARCHAR2(80),
FIRST_NAME VARCHAR2(50),
LAST_NAME VARCHAR2(50),
MIDDLE_NAME VARCHAR2(50),
ADDRESS_LINE1 VARCHAR2(80),
ADDRESS_LINE2 VARCHAR2(80),
CITY VARCHAR2(40),
COUNTRY VARCHAR2(50),
DATE_ADDED DATE,
MANAGER VARCHAR2(20)
);
Insert into CUSTOMER
(CUSTOMER_ID,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,ADDRESS_LINE2,CITY,
COUNTRY,DATE_ADDED,REGION) values
(10,'JOHN','AMIRTHRAJ','T','2345 PETERDRIVE',null,'Atlanta','USA',
to_date('12-JAN-15','DD-MON-YY'),'SOUTH');
Insert into CUSTOMER
(CUSTOMER_ID,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,ADDRESS_LINE2,CITY,
COUNTRY,DATE_ADDED,REGION) values
(11,'TOM','JOSEPH','A','123SANDY DRIVE',null,'New York','USA',
to_date('12-JAN-15','DD-MON-YY'),'SOUTH');
Insert into CUSTOMER
(CUSTOMER_ID,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,ADDRESS_LINE2,CITY,
COUNTRY,DATE_ADDED,REGION) values
(12,'PETER','MANN','J','3456 GATES DRIVE',null,'Washington','USA',
to_date('13-JAN-15','DD-MON-YY'),'NORTH');
COMMIT;
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (100,'Mobile Cover',30,null,35,10,100,'Mobile');
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (200,'Samsung F7100',80,'BLACK',35,6,50,'Mobile');
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (105,'HTC 7800',70,'BLACK',80,6,40,'Mobile');
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (106,'Microsoft Keyboard 7865',50,'BLACK',60,3,20,'Computer');
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (501,'Microsoft Mouse 7863',30,'GREY',40,1,25,'Computer');
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (101,'iPhone',500,'GOLD',600,6,20,'Mobile');
COMMIT;
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('12-JAN-15','DD-MON-RR'),1560,101,12,1000,20,20,400,40,440);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('15-JAN-15','DD-MON-RR'),1561,101,12,1000,20,20,400,40,440);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('16-JAN-15','DD-MON-RR'),1563,101,12,1000,20,20,400,40,440);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('12-JAN-15','DD-MON-RR'),1562,101,12,1000,20,20,400,40,440);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('12-JAN-15','DD-MON-RR'),1565,101,12,1000,20,20,400,40,440);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('01-FEB-15','DD-MON-RR'),1269,200,12,1000,20,80,1600,160,1760);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('01-FEB-15','DD-MON-RR'),1269,200,12,1000,20,80,1600,160,1760);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('01-JAN-15','DD-MON-RR'),1267,100,10,1000,2,20,40,4,44);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('01-JAN-15','DD-MON-RR'),1267,101,10,1000,2,30,60,6,66);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('02-JAN-15','DD-MON-RR'),1268,100,11,2000,10,30,300,30,330);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('09-FEB-15','DD-MON-RR'),1270,105,10,3000,20,70,1400,140,1540);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('09-FEB-15','DD-MON-RR'),1270,106,10,3000,10,50,500,50,550);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('10-FEB-15','DD-MON-RR'),1271,101,10,3000,10,30,300,30,330);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('11-FEB-15','DD-MON-RR'),1272,200,12,4000,4,80,320,32,352);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('11-FEB-15','DD-MON-RR'),1273,200,12,5000,6,80,480,48,528);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('11-FEB-15','DD-MON-RR'),1274,100,10,6000,8,20,160,16,176);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('11-FEB-15','DD-MON-RR'),1275,101,10,7000,10,30,300,30,330);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('15-FEB-15','DD-MON-RR'),1276,100,11,8000,12,30,360,36,396);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('16-FEB-15','DD-MON-RR'),1277,105,10,9000,14,70,980,98,1078);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('16-FEB-15','DD-MON-RR'),1278,106,10,10000,16,50,800,80,880);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('16-FEB-15','DD-MON-RR'),1279,101,10,11000,18,30,540,54,594);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('16-FEB-15','DD-MON-RR'),1280,100,12,12000,20,80,1600,160,1760);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('20-FEB-15','DD-MON-RR'),1281,105,12,1000,22,80,1760,176,1936);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('21-FEB-15','DD-MON-RR'),1282,106,10,1000,24,20,480,48,528);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('22-FEB-15','DD-MON-RR'),1283,101,10,1000,26,30,780,78,858);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('23-FEB-15','DD-MON-RR'),1284,100,11,2000,28,30,840,84,924);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('24-FEB-15','DD-MON-RR'),1285,105,10,3000,30,70,2100,210,2310);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('25-FEB-15','DD-MON-RR'),1286,100,10,3000,32,50,1600,160,1760);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('25-FEB-15','DD-MON-RR'),1287,105,10,3000,34,30,1020,102,1122);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('25-FEB-15','DD-MON-RR'),1288,106,12,9000,36,80,2880,288,3168);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('28-FEB-15','DD-MON-RR'),1289,101,12,10000,38,80,3040,304,3344);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('01-MAR-15','DD-MON-RR'),1290,101,10,11000,40,20,800,80,880);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('02-MAR-15','DD-MON-RR'),1291,100,10,12000,42,30,1260,126,1386);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('02-MAR-15','DD-MON-RR'),1292,105,11,1000,44,30,1320,132,1452);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('02-MAR-15','DD-MON-RR'),1293,106,10,1000,46,70,3220,322,3542);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('02-MAR-15','DD-MON-RR'),1294,101,10,2000,48,50,2400,240,2640);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('06-MAR-15','DD-MON-RR'),1295,100,10,3000,50,30,1500,150,1650);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('07-MAR-15','DD-MON-RR'),1296,105,12,9000,52,80,4160,416,4576);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('08-MAR-15','DD-MON-RR'),1297,106,12,10000,54,80,4320,432,4752);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('09-MAR-15','DD-MON-RR'),1298,101,10,11000,28,20,560,56,616);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('08-MAR-15','DD-MON-RR'),1299,100,10,12000,30,30,900,90,990);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('08-MAR-15','DD-MON-RR'),1300,100,11,1000,32,30,960,96,1056);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('08-MAR-15','DD-MON-RR'),1301,105,10,1000,34,70,2380,238,2618);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('08-MAR-15','DD-MON-RR'),1302,106,10,1000,36,50,1800,180,1980);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('14-MAR-15','DD-MON-RR'),1303,101,10,1000,38,30,1140,114,1254);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('15-MAR-15','DD-MON-RR'),1304,101,10,2000,40,80,3200,320,3520);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('16-MAR-15','DD-MON-RR'),1305,100,12,3000,42,80,3360,336,3696);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('17-MAR-15','DD-MON-RR'),1306,105,12,3000,44,20,880,88,968);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('18-MAR-15','DD-MON-RR'),1307,106,10,3000,46,30,1380,138,1518);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('19-MAR-15','DD-MON-RR'),1308,105,10,1000,48,30,1440,144,1584);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('19-MAR-15','DD-MON-RR'),1309,106,11,2000,50,70,3500,350,3850);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('19-MAR-15','DD-MON-RR'),1310,101,12,3000,52,50,2600,260,2860);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('19-MAR-15','DD-MON-RR'),1311,101,12,9000,54,30,1620,162,1782);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('23-MAR-15','DD-MON-RR'),1312,100,10,10000,34,80,2720,272,2992);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('24-MAR-15','DD-MON-RR'),1313,105,10,1000,36,80,2880,288,3168);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('25-MAR-15','DD-MON-RR'),1314,106,11,1000,38,20,760,76,836);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('26-MAR-15','DD-MON-RR'),1315,101,10,1000,40,30,1200,120,1320);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('27-MAR-15','DD-MON-RR'),1316,100,10,1000,42,30,1260,126,1386);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('27-MAR-15','DD-MON-RR'),1317,105,10,2000,44,70,3080,308,3388);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('27-MAR-15','DD-MON-RR'),1318,106,10,3000,38,50,1900,190,2090);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('27-MAR-15','DD-MON-RR'),1319,101,10,3000,40,30,1200,120,1320);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('31-MAR-15','DD-MON-RR'),1320,100,11,3000,42,80,3360,336,3696);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('01-APR-15','DD-MON-RR'),1321,100,10,1000,38,80,3040,304,3344);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('02-APR-15','DD-MON-RR'),1322,105,10,1000,40,20,800,80,880);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('03-APR-15','DD-MON-RR'),1323,106,10,1000,42,30,1260,126,1386);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('04-APR-15','DD-MON-RR'),1324,101,12,1000,46,30,1380,138,1518);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('04-APR-15','DD-MON-RR'),1325,101,12,2000,48,70,3360,336,3696);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('04-APR-15','DD-MON-RR'),1326,101,10,3000,50,50,2500,250,2750);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('04-APR-15','DD-MON-RR'),1327,101,10,3000,52,30,1560,156,1716);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('08-APR-15','DD-MON-RR'),1328,101,11,3000,54,80,4320,432,4752);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('09-APR-15','DD-MON-RR'),1329,101,10,3000,28,80,2240,224,2464);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('10-APR-15','DD-MON-RR'),1330,101,10,9000,30,20,600,60,660);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('11-APR-15','DD-MON-RR'),1331,101,10,10000,32,30,960,96,1056);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('10-APR-15','DD-MON-RR'),1332,101,12,1000,34,30,1020,102,1122);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('10-APR-15','DD-MON-RR'),1333,100,12,1000,36,70,2520,252,2772);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('10-APR-15','DD-MON-RR'),1334,100,10,1000,38,50,1900,190,2090);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('15-APR-15','DD-MON-RR'),1335,100,10,1000,40,30,1200,120,1320);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('16-APR-15','DD-MON-RR'),1336,100,11,2000,42,80,3360,336,3696);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('17-APR-15','DD-MON-RR'),1337,100,10,3000,40,80,3200,320,3520);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('18-APR-15','DD-MON-RR'),1338,101,12,3000,42,20,840,84,924);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values
(to_date('18-APR-15','DD-MON-RR'),1339,101,12,3000,44,30,1320,132,1452);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('18-APR-15','DD-MON-RR'),1340,101,10,12000,38,30,1140,114,1254);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('18-APR-15','DD-MON-RR'),1341,101,10,12000,40,70,2800,280,3080);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('22-APR-15','DD-MON-RR'),1342,101,12,12000,42,50,2100,210,2310);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('23-APR-15','DD-MON-RR'),1343,101,12,12000,38,30,1140,114,1254);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('24-APR-15','DD-MON-RR'),1344,101,10,12000,40,80,3200,320,3520);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('25-APR-15','DD-MON-RR'),1345,100,10,12000,40,80,3200,320,3520);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('26-APR-15','DD-MON-RR'),1346,100,11,12000,42,20,840,84,924);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('27-APR-15','DD-MON-RR'),1347,100,12,1000,44,30,1320,132,1452);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('27-APR-15','DD-MON-RR'),1348,100,12,1000,38,30,1140,114,1254);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('27-APR-15','DD-MON-RR'),1349,100,10,1000,40,70,2800,280,3080);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('30-APR-15','DD-MON-RR'),1350,100,10,1000,42,50,2100,210,2310);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('01-MAY-15','DD-MON-RR'),1351,100,11,1000,38,30,1140,114,1254);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('12-JAN-15','DD-MON-RR'),1589,101,12,1000,20,20,400,40,440);
COMMIT;
Insert into SALES_HISTORY
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('01-JAN-15','DD-MON-YY'),1267,100,10,1000,2,20,40,4,44);
Insert into SALES_HISTORY
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('01-JAN-15','DD-MON-YY'),1267,101,10,1000,2,30,60,6,66);
Insert into SALES_HISTORY
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('07-JAN-15','DD-MON-YY'),1268,100,11,2000,10,30,300,30,330);
COMMIT;
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(1000,'Supervisor','Peter','Mann','R','4567 ashfordroad',null,'Atlanta','USA',
to_date('12-JAN-14','DD-MON-RR'),'Tom');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(2000,'Supervisor','John','King','A','67 dunwoody road',null,'Las Vegas','USA',
to_date('14-JAN-14','DD-MON-RR'),'Tom');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(3000,'Supervisor','Bob','Moris','A','679 glendrigedr',null,'Orlando','USA',
to_date('14-FEB-14','DD-MON-RR'),'Raj');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(4000,'President','Jeff','Afonso','B','234 peachtreetree st',null,'California','USA',
to_date('14-FEB-14','DD-MON-RR'),null);
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(5000,'Manager','Raj','Kishore','J','456 walTers cir',null,'Miami','USA',
to_date('15-FEB-14','DD-MON-RR'),'Jeff');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(6000,'Entry Level','Sonu','Agarwal','I','458+ gandhi road',null,'New York','USA',
to_date('16-FEB-14','DD-MON-RR'),'Peter');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(7000,'Supervisor','Greg','Chappel','U','345 seneca ct',null,'Boston','USA',
to_date('17-FEB-14','DD-MON-RR'),'Raj');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(8000,'Entry Level','Rehman','Ahmed','E','908 peter drive',null,'Atlanta','USA',
to_date('18-FEB-14','DD-MON-RR'),'Bob');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(9000,'Entry Level','Patel','Hari',null,'47890 hammond dr',null,'Orlando','USA',
to_date('19-FEB-14','DD-MON-RR'),'Peter');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(10000,'Manager','Tom','Joseph','O','789 califooor st',null,'California','USA',
to_date('20-FEB-14','DD-MON-RR'),'Jeff');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(11000,'Entry Level','Anil','Krishna','P','2354 king st',null,'Miami','USA',
to_date('21-FEB-14','DD-MON-RR'),'Greg');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(12000,'Entry Level','James','Gavin','W','456 chris ave',null,'New York','USA',
to_date('22-FEB-14','DD-MON-RR'),'John');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(13000,'Entry Level','Sara','K','E','678 larawd st',null,'Mississippi','USA',
to_date('23-FEB-14','DD-MON-RR'),'Bob');
COMMIT;