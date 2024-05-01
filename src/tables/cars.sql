CREATE TABLE cars (
    id INT PRIMARY KEY AUTO_INCREMENT,
    model VARCHAR(100),
    year INT,
    color VARCHAR(50),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);