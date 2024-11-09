CREATE TABLE product (
    id_product SERIAL PRIMARY KEY,
    title VARCHAR (255) NOT NULL,
    description TEXT, 
    price INT
)

CREATE TABLE category (
    id_category SERIAL PRIMARY KEY,
    id_category VARCHAR(255) NOT NULL, 
    title VARCHAR(255),
)

CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL, 
    adress TEXT, 
    phoneNumber INT
)

CREATE TABLE order (
    id_order SERIAL PRIMARY KEY,
    id_order INT, 
    ordered_at DATE, 
    id_client INT
)
