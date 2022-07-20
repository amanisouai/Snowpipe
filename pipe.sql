CREATE OR REPLACE pipe "BANK_TRANSACTIONS_PIPE"
  auto_ingest = true
  integration = 'BANKING_SNOWPIPE_EVENT'
  as
  copy into BANK_TRANSACTIONS
(TransactionNo,DateTime,FromAccount,ToAccount,Amount,TypeOfTransaction,TranDescription,Source)
 from (SELECT $1,TO_DATE($2,'MM/DD/YYYY HH:MI AM'),$3,$4,$5,$6,$7,$8  FROM @BANK_TRANSACTIONS_STAGE )
  file_format = (type = 'CSV');

  ALTER PIPE BANK_TRANSACTIONS_PIPE REFRESH;