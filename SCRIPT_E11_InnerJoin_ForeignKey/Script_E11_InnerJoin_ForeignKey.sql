
-- 1 Using the INGREDIENT and MEAL tables, write a query to return the name of all meals that contain garlic.
SELECT m.NAME
FROM MEAL m
JOIN INGREDIENT i 
ON m.MEAL_ID = i.MEAL_ID 
WHERE i.NAME = 'Garlic';



-- 2 Using the INGREDIENT and MEAL tables, write a query to return the number of meals with vegetarian ingredients.
SELECT COUNT(DISTINCT m.NAME) AS ContaPasti
FROM MEAL m
  JOIN INGREDIENT i
  ON m.MEAL_ID = i.MEAL_ID
  WHERE i.VEGETARIAN = TRUE;
 # 6 pasti su 6 hanno Ingredienti Vegetariani.  Ma come guardo quanti hanno SOLO ingredienti vegetariani???

 
 
--  3 Using the INGREDIENT and MEAL tables, write a query to return the names of meals that
-- have at least 1 gluten free ingredient and at least 1 vegan ingredient.
SELECT m.NAME FROM MEAL m 
JOIN INGREDIENT i 
ON m.MEAL_ID = i.MEAL_ID AND i.VEGETARIAN = TRUE
JOIN INGREDIENT i2 
ON m.MEAL_ID = i2.MEAL_ID AND i.GLUTEN_FREE = TRUE
GROUP BY m.NAME ;
# tutti, provando a guardare SELECT * FROM INGREDIENT. In ogni caso metodo bizzarro. Joino più pezzi di tabelle.
#Ma come faccio a verificare se due ingredienti distinti sono rispettivamente vegetarian e gluten_free, per ogni elemento?


-- 4 Using the INGREDIENT and MEAL tables, write a query to return the average number of ingredients per meal.
SELECT AVG(conta_singoli)
FROM (
  SELECT COUNT(*) AS conta_singoli
  FROM INGREDIENT
  GROUP BY MEAL_ID
) AS conta_media;
#Difficilissimo. Forse dovremmo fare più Clause.


-- 5 Using the INGREDIENT and MEAL tables, write a query to return the names of meals that have more than 3 ingredients.
SELECT M.NAME
FROM MEAL M
INNER JOIN INGREDIENT I ON M.MEAL_ID = I.MEAL_ID
GROUP BY M.MEAL_ID
HAVING COUNT(*) > 3;
#ok. Tutti.


-- 6 INNER JOIN
CREATE TABLE CUSTOMER (
    CUSTOMER_ID INT PRIMARY KEY,
    NAME VARCHAR(255),
    ADDRESS VARCHAR(255)
);
CREATE TABLE ORDER (
    ORDER_ID INT PRIMARY KEY,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    TOTAL_COST DECIMAL(10,2)
);

SELECT * FROM CUSTOMER c
JOIN ORDER o
ON c.CUSTOMER_ID = o.CUSTOMER_ID;


-- 7 INNER JOIN
CREATE TABLE PRODUCT (
    PRODUCT_ID INT PRIMARY KEY,
    NAME VARCHAR(255),
    PRICE DECIMAL(10,2)
);
CREATE TABLE INVENTORY (
    PRODUCT_ID INT,
    STORE_ID INT PRIMARY KEY,
    QUANTITY INT
);

SELECT * FROM PRODUCT p
JOIN INVENTORY i
ON p.PRODUCT_ID = i.PRODUCT_ID;