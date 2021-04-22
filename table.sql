DROP TABLE IF EXISTS user_roles, users, roles;

CREATE TABLE users
(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(40),
    password VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE roles
(
    role_id INT AUTO_INCREMENT,
    role_name VARCHAR(50),
    PRIMARY KEY (role_id)
);

CREATE TABLE user_roles
(
    super_id INT NOT NULL,
    user_id INT NOT NULL,
    role_id INT NOT NULL,
    -- PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (role_id) REFERENCES roles (role_id)
);

ALTER TABLE user_roles
    ADD PRIMARY KEY (super_id);
