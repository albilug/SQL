CREATE TABLE CUSTOMER (
id_customer INT AUTO_INCREMENT PRIMARY KEY,
name_customer VARCHAR(255) NOT NULL,
address_customer VARCHAR(255) NOT NULL
);

INSERT INTO customer (name_customer, address_customer)
VALUES
('Gigi', 'Via fasulla 1'),
('Bepi', 'Casa della Prateria 34'),
('Timmi', 'USA BROKENWOOD BOARDED'),
('John Sminchis', 'USA BROKENWOOD BOARDED');

SELECT * FROM CUSTOMER ;

UPDATE CUSTOMER  SET name_customer = 'Er PAOLO SCOPRITORE' WHERE id_customer = 1;
SELECT * FROM CUSTOMER ; # Gigi -> Er Paolo Scopritore

DELETE FROM CUSTOMER  WHERE id_customer = 3 OR id_customer = 4;
SELECT * FROM CUSTOMER ; #ADDIO TIMMI E JOHN.

TRUNCATE(CUSTOMER);


# Q6 PRIMARY KEY (customer_id)
# Q7 PRIMARY_KEY (product_name)
# Q8 PRIMARY_KEY (order_id)
# Q9 PRIMARY_KEY (order_id)