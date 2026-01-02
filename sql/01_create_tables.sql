-- Create database
CREATE DATABASE IF NOT EXISTS product_analysis;
USE product_analysis;

-- Products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    cost_price DECIMAL(10,2)
);

-- Sales table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    sale_date DATE,
    quantity INT,
    selling_price DECIMAL(10,2),
    region VARCHAR(50),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

