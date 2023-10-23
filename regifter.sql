-- Getting started, do not update DROP DATABASE IF EXISTS regifter;
CREATE DATABASE regifter; \c regifter
-- End getting started code
--
-- Write your code below each prompt
--
 \echo

CREATE a TABLE called gifts

CREATE TABLE gifts ( id SERIAL PRIMARY KEY, gift TEXT, giver TEXT, price INT, previously_regifted BOOL);
-- 
 \echo See details of the TABLE you created
-- 
 \d or \dt
-- 
 \echo

ALTER the TABLE so that the column price is changed to value
-- 

ALTER TABLE gifts RENAME price TO value;
-- 
 \echo
INSERT a peach candle, given by 'Santa' thats value is 9 AND has been previously regifted
-- 
INSERT INTO gifts (gift, giver, value, previously_regifted) VALUES ('peach candles', 'Santa', 9, TRUE);
--
 \echo Query for all the columns IN your gifts TABLE
-- 
SELECT  *
FROM gifts;
--
 \echo Uncomment below to
INSERT 5 more gifts
-- 
INSERT INTO gifts (gift, giver, value, previously_regifted) VALUES('mango candles', 'Santa', 4, FALSE), ('coal', 'Santa', 2, TRUE), ('telescope', 'Mother', 6, FALSE), ('apple candles', 'Santa', 2, FALSE), ('doll', 'Father', 3, TRUE);
-- 
 \echo
INSERT 5 more gifts of your own choosing, include 1 more candle
--
 UPDATE gifts

SET value = 10
WHERE id = 1;
INSERT INTO gifts (gift, giver, value, previously_regifted) VALUES ('bike', 'James', 2, FALSE), ('piano', 'Santa', 9, TRUE), ('skateboard', 'Brother', 1, FALSE), ('apple candles', 'Santa', 2, FALSE), ('chessboard', 'Uncle', 5, TRUE);
--
 \echo Query for gifts
WITH a price greater than or equal to 20
--
SELECT  *
FROM gifts
WHERE value >= 20;
--
 \echo Query for every gift that has the word candle IN it, only show the gift column
--
SELECT  gift
FROM gifts
WHERE gift LIKE '%candle%'
--
 \echo Query for every gift whose giver is Santa OR value is greater than 30
--
SELECT  *
FROM gifts
WHERE giver = 'Santa' OR value > 30;
--
 \echo Query for every gift whose giver is NOT Santa
--
SELECT  *
FROM gifts
WHERE giver != 'Santa';
--
 \echo Update the second gift to have a value of 2999
-- 
 UPDATE gifts

SET value = 2999
WHERE id = 2;
--
 \echo Query for the updated item
--
SELECT  *
FROM gifts;
--
 \echo
DELETE all the gifts
FROM Santa AND return the 'value' AND 'gift' of the gift you have deleted
--
 DELETE
FROM gifts
WHERE giver = 'Santa' RETURNING value, gift;
--
 \echo Query for all the columns IN your gifts TABLE one more time
--
SELECT  *
FROM gifts;
-- BONUSES
--
 \echo Count the total number of gifts that have the word candle IN it
-- 
SELECT  COUNT(gift)
FROM gifts
WHERE gift = 'candle';
--
 \echo Get the AVEREAGE value
FROM all the gifts
--
SELECT  AVG(value)
FROM gifts;
-- 
 \echo
LIMIT to 3 gifts, offset by 2 AND
ORDER BY price descending
--
SELECT  *
FROM gifts
ORDER BY value DESC
LIMIT 3 OFFSET 2;
--
-- finish
--
 DROP TABLE IF EXISTS gifts;