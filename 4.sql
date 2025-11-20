create TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL
);

CREATE Table Orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    price INT NOT NULL
);

CREATE TABLE quanlity (
    order_id INT,
    product_id INT,
    quality SMALLINT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

