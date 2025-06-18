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

--CREATION OF TABLES IN THE SCHEMAS

--tbale for products
CREATE TABLE products.products (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    description TEXT,
    category VARCHAR(100),
    price DECIMAL(10, 2),
    discountPercentage DECIMAL(5, 2),
    rating DECIMAL(3, 2),
    stock INT,
    tags TEXT[], 
    brand VARCHAR(100),
    sku VARCHAR(100),
    weight DECIMAL(10, 2),
    dimensions VARCHAR(100), 
    warrantyInformation TEXT,
    shippingInformation TEXT,
    availabilityStatus VARCHAR(50),
    reviews JSONB, 
    returnPolicy TEXT,
    minimumOrderQuantity INT,
    images TEXT[], 
    thumbnail VARCHAR(255),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
--table for user profiles
CREATE TABLE profiles.user_profiles (
    customer_id SERIAL PRIMARY KEY,
    age INT,
    location VARCHAR(255),
    salary DECIMAL(10, 2),
    race VARCHAR(100),
    gender VARCHAR(10),
    education VARCHAR(100)
);

--tabl for sales
CREATE TABLE sales.sales (
    sale_id SERIAL PRIMARY KEY,
    date DATE,
    product VARCHAR(255),
    quantity INT,
    unit_price DECIMAL(10, 2),
    total_price DECIMAL(10, 2),
    region VARCHAR(100),
    sales_rep VARCHAR(100),
    customer_id INT REFERENCES profiles.user_profiles(customer_id)  -- Foreign key reference
);


--LOADING DATA INTO THE SPECIFIC TABLES OF OUR WAREHOUSE






