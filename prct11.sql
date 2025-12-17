CREATE TABLE Books(
    book_id INT PRIMARY key,
    author_name VARCHAR(255),
    title VARCHAR(255),
    publisher_id INT,
    FOREIGN KEY (publisher_id) REFERENCES Publishers (publisher_id)
);
CREATE TABLE Publishers(
    publisher_id INT PRIMARY KEY,
    publisher_name VARCHAR(255),
    publisher_city VARCHAR(255)
);
CREATE TABLE Cars(
    car_model VARCHAR(255) PRIMARY KEY,
    car_manufacturer VARCHAR(255)
);
CREATE TABLE ResultRace(
    race_id INT,
    finish_time TIME,
    car_model VARCHAR(255),
    driver_id INT,
    PRIMARY KEY (race_id, driver_id),
    FOREIGN KEY (car_model) REFERENCES Cars(car_model)
);