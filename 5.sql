CREATE TABLE Authors (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(200) NOT NULL

);

CREATE TABLE Books (
    book_id SERIAL PRIMARY KEY,
    author_id INT,
    title VARCHAR(200) NOT NULL,
    pulished_year INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

ALTER TABLE Books ADD COLUMN genre VARCHAR(100);

ALTER TABLE Books ADD COLUMN pulished_year CHECK(pulished_id <= 2025);

ALTER TABLE Books DROP COLUMN author_id;

CREATE TABLE Book_Authors (
    book_id INT,
    author_id INT,
    PRIMARY KEY(book_id, author_id),
    FOREIGN KEY(book_id) REFERENCES Books(book_id), 
    FOREIGN KEY(author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Temp_Table (
    name VARCHAR(100)
);

DROP TABLE Temp_Table



