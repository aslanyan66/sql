CREATE TABLE finances (
    id INT PRIMARY KEY AUTO_INCREMENT,
    salary INT,
    user_id INT UNIQUE,
    FOREIGN KEY (user_id) REFERENCES users(id)
);