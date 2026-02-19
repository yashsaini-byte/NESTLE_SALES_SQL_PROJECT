#CREATING DATABASE
CREATE DATABASE NESTLE;
USE NESTLE;

#PRODUCTS TABLE
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price INT(20));


#REGIONS TABLE
CREATE TABLE regions (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(50)
);

#SALES TABLE
CREATE TABLE sales (
    sales_id INT PRIMARY KEY,
    product_id INT,
    region_id INT,
    sales_date DATE,
    quantity_sold INT,
    total_sales_value DECIMAL(12,2),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (region_id) REFERENCES regions(region_id)
);
