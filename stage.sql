
CREATE OR REPLACE STAGE BANK_TRANSACTIONS_STAGE
url = 'azure://snowflakeazuresnowpipe.blob.core.windows.net/azsnow-blob'
credentials = (azure_sas_token= ' ?sv=2021-06-08&ss=bfqt&srt=co&sp=rwlaciytfx&se=2022-07-22T15:30:57Z&st=2022-07-20T07:30:57Z&spr=https&sig=P47pZHm6Zy8ZjGoB%2FTeoS8zpi1gDEJqi5cHOaZscsM8%3D'
);


show stages;

ls @BANK_TRANSACTIONS_STAGE;
