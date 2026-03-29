CREATE DATABASE Ecommerce;
USE Ecommerce;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

CREATE TABLE Order_Items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Customers VALUES
(1, 'Ali'),
(2, 'Ayesha'),
(3, 'Usman');

INSERT INTO Orders VALUES
(101, 1),
(102, 2),
(103, 1);

INSERT INTO Products VALUES
(201, 'Laptop'),
(202, 'Mobile'),
(203, 'Keyboard');

INSERT INTO Order_Items VALUES
(1, 101, 201),  -- Ali ordered Laptop
(2, 101, 203),  -- Ali ordered Keyboard
(3, 102, 202),  -- Ayesha ordered Mobile
(4, 103, 202);  -- Ali ordered Mobile

SELECT c.customer_name,o.order_id,p.product_name
FROM Order_Items ordItm
INNER JOIN Orders o
ON o.order_id=ordItm.order_id
INNER JOIN Products p
ON p.product_id=ordItm.product_id
INNER JOIN Customers c
ON c.customer_id=o.customer_id;