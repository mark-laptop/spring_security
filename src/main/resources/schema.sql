CREATE TABLE users
(
    id       BIGINT PRIMARY KEY AUTO_INCREMENT,
    name     VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255)        NOT NULL,
    email    VARCHAR(255),
    age      SMALLINT
);

CREATE TABLE roles
(
    id   BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE users_roles
(
    user_id BIGINT NOT NULL,
    role_id BIGINT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (role_id) REFERENCES roles (id),
    UNIQUE (user_id, role_id)
);

INSERT INTO users (id, name, password, email, age)
VALUES (1, 'user1', '123', 'test_1@gmail.com', 30),
       (2, 'admin', 'admin', 'test_2@gmail.com', 31);

INSERT INTO roles (id, name)
VALUES (1, 'ROLE_ADMIN'),
       (2, 'ROLE_USER');

INSERT INTO users_roles (user_id, role_id)
VALUES (1, 2),
       (2, 1);