CREATE DATABASE IF NOT EXISTS sample;
CREATE TABLE IF NOT EXISTS sample.emp(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    sex VARCHAR(1000),
    age INT,
    created_at TIMESTAMP NOT NULL default current_timestamp,
    updated_at TIMESTAMP NOT NULL default current_timestamp on update current_timestamp
);

USE sample;
START TRANSACTION;
INSERT INTO emp(name, sex, age) VALUES('John', 'man', 30);
INSERT INTO emp(name, sex, age) VALUES('Erika', 'woman', 40);
INSERT INTO emp(name, sex, age) VALUES('Jessy', 'woman', 80);
INSERT INTO emp(name, sex, age) VALUES('Bob', 'man', 23);
COMMIT;
