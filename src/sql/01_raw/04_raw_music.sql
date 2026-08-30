-- ============================================
-- CHINOOK RAW LAYER
-- Initial setup - Delta Tables
-- ============================================

USE CATALOG workspace;

-- Create the Raw schema
CREATE SCHEMA IF NOT EXISTS chinook_raw;


-- ============================================
-- 1. CUSTOMER
-- ============================================

CREATE OR REPLACE TABLE workspace.chinook_raw.customer
USING DELTA
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


-- ============================================
-- 2. INVOICE
-- ============================================

CREATE OR REPLACE TABLE workspace.chinook_raw.invoice
USING DELTA
AS
SELECT
    *,
    current_timestamp() AS ingestion_timestamp,
    current_date() AS date_stamp
FROM read_files(
    '/Volumes/workspace/default/ftw-b12/shared/week05/chinook_csv/Invoice.csv',
    format => 'csv',
    header => true
);


-- ============================================
-- 3. INVOICE LINE
-- ============================================

CREATE OR REPLACE TABLE workspace.chinook_raw.invoice_line
USING DELTA
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


-- ============================================
-- 4. EMPLOYEE
-- ============================================

CREATE OR REPLACE TABLE workspace.chinook_raw.employee
USING DELTA
AS
SELECT
    *,
    current_timestamp() AS ingestion_timestamp,
    current_date() AS date_stamp
FROM read_files(
    '/Volumes/workspace/default/ftw-b12/shared/week05/chinook_csv/Employee.csv',
    format => 'csv',
    header => true
);


-- ============================================
-- 5. ALBUM
-- ============================================

CREATE OR REPLACE TABLE workspace.chinook_raw.album
USING DELTA
AS
SELECT
    *,
    current_timestamp() AS ingestion_timestamp,
    current_date() AS date_stamp
FROM read_files(
    '/Volumes/workspace/default/ftw-b12/shared/week05/chinook_csv/Album.csv',
    format => 'csv',
    header => true
);


-- ============================================
-- 6. ARTIST
-- ============================================

CREATE OR REPLACE TABLE workspace.chinook_raw.artist
USING DELTA
AS
SELECT
    *,
    current_timestamp() AS ingestion_timestamp,
    current_date() AS date_stamp
FROM read_files(
    '/Volumes/workspace/default/ftw-b12/shared/week05/chinook_csv/Artist.csv',
    format => 'csv',
    header => true
);


-- ============================================
-- 7. GENRE
-- ============================================

CREATE OR REPLACE TABLE workspace.chinook_raw.genre
USING DELTA
AS
SELECT
    *,
    current_timestamp() AS ingestion_timestamp,
    current_date() AS date_stamp
FROM read_files(
    '/Volumes/workspace/default/ftw-b12/shared/week05/chinook_csv/Genre.csv',
    format => 'csv',
    header => true
);


-- ============================================
-- 8. MEDIA TYPE
-- ============================================

CREATE OR REPLACE TABLE workspace.chinook_raw.media_type
USING DELTA
AS
SELECT
    *,
    current_timestamp() AS ingestion_timestamp,
    current_date() AS date_stamp
FROM read_files(
    '/Volumes/workspace/default/ftw-b12/shared/week05/chinook_csv/MediaType.csv',
    format => 'csv',
    header => true
);


-- ============================================
-- 9. PLAYLIST
-- ============================================

CREATE OR REPLACE TABLE workspace.chinook_raw.playlist
USING DELTA
AS
SELECT
    *,
    current_timestamp() AS ingestion_timestamp,
    current_date() AS date_stamp
FROM read_files(
    '/Volumes/workspace/default/ftw-b12/shared/week05/chinook_csv/Playlist.csv',
    format => 'csv',
    header => true
);


-- ============================================
-- 10. PLAYLIST TRACK
-- ============================================

CREATE OR REPLACE TABLE workspace.chinook_raw.playlist_track
USING DELTA
AS
SELECT
    *,
    current_timestamp() AS ingestion_timestamp,
    current_date() AS date_stamp
FROM read_files(
    '/Volumes/workspace/default/ftw-b12/shared/week05/chinook_csv/PlaylistTrack.csv',
    format => 'csv',
    header => true
);


-- ============================================
-- 11. TRACK
-- ============================================

CREATE OR REPLACE TABLE workspace.chinook_raw.track
USING DELTA
AS
SELECT
    *,
    current_timestamp() AS ingestion_timestamp,
    current_date() AS date_stamp
FROM read_files(
    '/Volumes/workspace/default/ftw-b12/shared/week05/chinook_csv/Track.csv',
    format => 'csv',
    header => true
);

-- ============================================
-- VERIFY TABLES
-- ============================================

SHOW TABLES IN workspace.chinook_raw;