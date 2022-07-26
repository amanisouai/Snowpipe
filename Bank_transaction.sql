CREATE TABLE BANK_TRANSACTIONS
(
TransactionNo INT,
DateTime DATETIME,
FromAccount INT,
ToAccount INT,
Amount NUMBER,
TypeOfTransaction VARCHAR(20),
TranDescription VARCHAR(200),
Source VARCHAR(100)
);


insert INTO BANK_TRANSACTIONS
(TransactionNo,DateTime,FromAccount,ToAccount,Amount,TypeOfTransaction,TranDescription,Source)
VALUES (1,TO_DATE('02/27/2020 09:57 AM','MM/DD/YYYY HH:MI AM'),360271,527296,3926.4,'Debit','adjustment','Chase');

SELECT * FROM BANK_TRANSACTIONS;



truncate table BANK_TRANSACTIONS;


select *
from table(information_schema.copy_history(table_name=>'BANK_TRANSACTIONS', start_time=> dateadd(hours, -1, current_timestamp())));