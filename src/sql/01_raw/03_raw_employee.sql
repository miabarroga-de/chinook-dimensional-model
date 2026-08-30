-- RAW Employee
CREATE TABLE IF NOT EXISTS workspace.chinook_raw.employee
AS

SELECT
    *,
    current_timestamp() AS ingestion_timestamp,
    current_date() AS date_stamp
FROM read_files(
    '/Volumes/workspace/default/ftw-b12/shared/week05/chinook_csv/Customer.csv',
    format => 'csv',
    header => true
);