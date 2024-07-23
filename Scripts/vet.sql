USE menagerie;

SELECT * FROM pet;

DELETE FROM pet;

LOAD DATA INFILE "/usr/local/mysql/mysql-files/pet.txt" INTO TABLE pet;

UPDATE pet SET birth='1989-08-31'WHERE name='Bowser';

SELECT * FROM pet WHERE name='Bowser';

SELECT * FROM pet WHERE species='dog' OR species='cat';

SELECT * FROM pet WHERE (species='dog' AND sex='f') OR (species='cat' AND sex='m');

SELECT name, species FROM pet;

SELECT owner FROM pet;

SELECT DISTINCT owner FROM pet;

DESCRIBE pet;

SELECT name, species, sex FROM pet WHERE (species='dog' OR species='cat');

SELECT * FROM pet ORDER BY birth;

SELECT name, species, birth FROM pet WHERE owner='Gwen' ORDER BY birth;

SELECT name FROM pet ORDER BY name ASC;


SELECT name, species, birth FROM pet ORDER BY species, birth ASC;

SELECT name, birth, CURDATE(), TIMESTAMPDIFF(YEAR, birth, CURDATE()) FROM pet; 

SELECT birth, MONTH(birth) FROM pet; 
SELECT birth, DAY(birth) FROM pet;

SELECT name, species, birth, CURDATE(), TIMESTAMPDIFF(YEAR, birth, CURDATE()) AS age FROM pet
ORDER BY age;

SELECT name, species, birth, death, TIMESTAMPDIFF(YEAR, birth, death) AS age FROM pet 
WHERE death IS NOT NULL ORDER BY age;

SELECT name, birth, MONTH(birth) as 'birth month' FROM pet ORDER BY birth;

SELECT name, birth FROM pet WHERE MONTH(birth)>=5;

SELECT name, birth FROM pet where MONTH(birth) = MONTH(DATE_ADD(CURDATE(), INTERVAl 1 MONTH));

SELECT name, birth FROM pet WHERE MONTH(birth) = MOD(MONTH(CURDATE()), 12) + 1;

SELECT CURDATE();

SELECT CURDATE() + INTERVAL 1 DAY; #how you add days (or time) to a given date

SELECT MOD(1,5);

SELECT name, birth FROM pet WHERE MONTH(birth) = MONTH(DATE_ADD(CURDATE(), INTERVAL 1 MONTH));

SELECT name, birth FROM pet WHERE MONTH('2024-12-01') = MOD(MONTH(CURDATE()), 12) + 1;

SELECT MONTH('2024-12-01');

SELECT MOD(MONTH('2024-12-01'), 12) +1;

SELECT 1 IS NOT NULL, 1 IS NULL;

SELECT 1 > NULL; 

SELECT 0 IS NULL, 0 IS NOT NULL, '' IS NULL, '' IS NOT NULL;

SELECT NULL, 1+NULL, CONCAT(NULL, 'Invisible') 

SELECT IFNULL(10, NULL);

SELECT name, birth, death FROM pet WHERE death IS NOT NULL;

SELECT MONTH(DATE_ADD('2024-12-12', INTERVAL 1 MONTH));

SELECT CURRENT_DATE(); 
