/* 2 table way */
CREATE TABLE name(
    product_id INT AUTO_INCREMENT,
    product_name CHAR(10),
    PRIMARY KEY(product_id)
);
INSERT INTO name (product_name) VALUES
('kit'),
('mars'),
('milk'),
('bread');

CREATE TABLE cat(
    product_id INT ,
    product_cat CHAR(10),
    PRIMARY KEY(product_id,product_cat)
);
INSERT INTO cat VALUES
(1,'choco'),
(1,'sales'),
(2,'choco'),
(3,'fresh'),
(3,'sales');
SELECT * FROM name;
SELECT * FROM cat;
SELECT * FROM name LEFT OUTER JOIN cat
USING(product_id);

/* 1 table way */
CREATE TABLE onetable(
    product_ID INT AUTO_INCREMENT PRIMARY KEY,
    product_name CHAR(10),
    product_cat1 CHAR(10) DEFAULT NULL ,
    product_cat2 CHAR(10) DEFAULT NULL
);
SELECT * FROM onetable;
INSERT INTO onetable (product_name,product_cat1,product_cat2) VALUES
('kit','fresh','cold'),
('mit','cold',NULL),
('bit',NULL,NULL),
('mit','cold','sales');
SELECT product_name AS name ,product_cat1 AS CAT FROM onetable
UNION SELECT product_name,product_cat2 FROM onetable 
WHERE product_cat2 IS NOT NULL;