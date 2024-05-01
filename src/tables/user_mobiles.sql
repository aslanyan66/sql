CREATE TABLE mobiles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    model VARCHAR(50),
    color VARCHAR(50),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);