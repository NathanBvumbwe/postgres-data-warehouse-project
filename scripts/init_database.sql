/*--so this is the data_warehouse am building for my data virtualization assignment. 
abit messy and ugly but not bad for a start, loooking forward for more projects to come.
am using postegres so not much code in here. but trust me i know what am doing😂😂.
	*/
-- Database: data_warehouse

-- DROP DATABASE IF EXISTS data_warehouse;

CREATE DATABASE data_warehouse
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

	
--CREATING SCHEMAS TO BETTER ORGANIZE THE DATA YOU KNOW
CREATE SCHEMA profiles;
CREATE SCHEMA sales;
CREATE SCHEMA products;


