-- RAW SALES
CREATE OR REPLACE TABLE workspace.chinook_raw.invoice_line
AS

SELECT
    *,
    current_timestamp() AS ingestion_timestamp,
    current_date() AS date_stamp
FROM read_files(
    '/Volumes/workspace/default/ftw-b12/shared/week05/chinook_csv/InvoiceLine.csv',
    format => 'csv',
    header => true
);

CREATE OR REPLACE TABLE workspace.chinook_raw.invoice

SELECT
    *,
    current_timestamp() AS ingestion_timestamp,
    current_date() AS date_stamp
FROM read_files(
    '/Volumes/workspace/default/ftw-b12/shared/week05/chinook_csv/Invoice.csv',
    format => 'csv',
    header => true
);


