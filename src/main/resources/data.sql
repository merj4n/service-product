--CREATE TABLE tde_category (
--  id BIGINT AUTO_INCREMENT NOT NULL,
--  name VARCHAR(255) NULL,
--  CONSTRAINT pk_tde_category PRIMARY KEY (id)
--);
--
--CREATE TABLE tde_product (
--  id BIGINT AUTO_INCREMENT NOT NULL,
--  name VARCHAR(255) NULL,
--  description VARCHAR(255) NULL,
--  stock DOUBLE NULL,
--  price DOUBLE NULL,
--  status VARCHAR(255) NULL,
--  create_at datetime NULL,
--  category_id BIGINT NULL,
--  CONSTRAINT pk_tde_product PRIMARY KEY (id)
--);
--
--ALTER TABLE tde_product ADD CONSTRAINT FK_TDE_PRODUCT_ON_CATEGORY FOREIGN KEY (category_id) REFERENCES tde_category (id);

INSERT INTO tde_category (id,name) VALUES (1,'shoes');
INSERT INTO tde_category (id,name) VALUES (2,'books');
INSERT INTO tde_category (id,name) VALUES (3,'electronics');
INSERT INTO tde_category (id,name) VALUES (4,'tools');

INSERT INTO tde_product (id,name,description,stock,price,status,create_at,category_id) VALUES (1,'Nike Alma','Air flow feet protection',12.99,44.89,'',CURRENT_DATE,1);
INSERT INTO tde_product (id,name,description,stock,price,status,create_at,category_id) VALUES (2,'Adidas Zapper','Control and stability',9.99,44.89,'',CURRENT_DATE,1);
INSERT INTO tde_product (id,name,description,stock,price,status,create_at,category_id) VALUES (3,'El principito','La historia de un muchacho humilde',2.92,13.89,'',CURRENT_DATE,2);
