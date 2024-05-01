CREATE TABLE details (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT UNIQUE,
    height DECIMAL(5, 2),
    weight DECIMAL(5, 2),
    age INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);