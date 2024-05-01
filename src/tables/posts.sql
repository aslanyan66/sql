CREATE TABLE posts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    post_text TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);