-- Create Customers Table
CREATE TABLE Customers (
customer_id VARCHAR(10) PRIMARY KEY,
name VARCHAR(100) NOT NULL,
city VARCHAR(50) NOT NULL
);

-- Create Products Table
CREATE TABLE Products (
product_id VARCHAR(10) PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(50) NOT NULL
);

-- Create Sales Representatives Table
CREATE TABLE Sales_Representatives (
rep_id VARCHAR(10) PRIMARY KEY,
rep_name VARCHAR(100) NOT NULL
);

-- Create Orders Table
CREATE TABLE Orders (
order_id VARCHAR(10) PRIMARY KEY,
customer_id VARCHAR(10) NOT NULL,
order_date DATE NOT NULL,
rep_id VARCHAR(10),
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
FOREIGN KEY (rep_id) REFERENCES Sales_Representatives(rep_id)
);

-- Create Order Details Table
CREATE TABLE Order_Details (
order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
order_id VARCHAR(10),
product_id VARCHAR(10),
quantity INT NOT NULL,
price DECIMAL(10,2) NOT NULL,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Insert sample data (minimum 5 rows per table)

INSERT INTO Customers VALUES
('C001','Rohan Iyer','Mumbai'),
('C002','Aditya Shah','Mumbai'),
('C003','Arjun Singh','Pune'),
('C004','Neha Joshi','Mumbai'),
('C005','Divya Joshi','Mumbai');

INSERT INTO Products VALUES
('P001','Laptop','Electronics'),
('P002','Mobile','Electronics'),
('P003','Shirt','Clothing'),
('P004','Shoes','Footwear'),
('P005','Watch','Accessories');

INSERT INTO Sales_Representatives VALUES
('R001','Rahul'),
('R002','Amit'),
('R003','Sonia'),
('R004','Karan'),
('R005','Priya');

INSERT INTO Orders VALUES
('O001','C001','2023-01-01','R001'),
('O002','C002','2023-01-02','R002'),
('O003','C003','2023-01-03','R003'),
('O004','C004','2023-01-04','R004'),
('O005','C005','2023-01-05','R005');

INSERT INTO Order_Details (order_id, product_id, quantity, price) VALUES
('O001','P001',1,50000),
('O002','P002',2,20000),
('O003','P003',3,1500),
('O004','P004',1,3000),
('O005','P005',2,5000);


