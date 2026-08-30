-- ============================================
-- INITIAL SETUP
-- ============================================

-- Set the catalog
USE CATALOG workspace;


-- ============================================
-- CREATE DATA LAYER SCHEMAS
-- ============================================

-- Raw layer: preserves source data with minimal transformations
CREATE SCHEMA IF NOT EXISTS chinook_raw;

-- Clean layer: cleaned and standardized data
CREATE SCHEMA IF NOT EXISTS chinook_clean;

-- Mart layer: business-ready dimensional/fact models
CREATE SCHEMA IF NOT EXISTS chinook_mart;

-- Analytics layer: datasets prepared for reporting and analysis
CREATE SCHEMA IF NOT EXISTS chinook_analytics;

-- VERIFY SCHEMAS

SHOW SCHEMAS;