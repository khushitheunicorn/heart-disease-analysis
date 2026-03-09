USE heart_disease_db;
DESCRIBE heart_new2;

SELECT *
FROM heart_new2
WHERE BMI IS NULL
OR Smoking IS NULL
OR AgeCategory IS NULL
OR HeartDisease IS NULL;

SELECT BMI, AgeCategory, HeartDisease, COUNT(*)
FROM heart_new2
GROUP BY BMI, AgeCategory, HeartDisease
HAVING COUNT(*) > 1;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM heart_new2
WHERE id NOT IN (
    SELECT * FROM (
        SELECT MIN(id)
        FROM heart_new2
        GROUP BY BMI, AgeCategory, HeartDisease
    ) AS temp
);

DESCRIBE heart_new2;

ALTER TABLE heart_new2
MODIFY HeartDisease VARCHAR(5),
MODIFY Smoking VARCHAR(5),
MODIFY AlcoholDrinking VARCHAR(5),
MODIFY Stroke VARCHAR(5),
MODIFY DiffWalking VARCHAR(5),
MODIFY Sex VARCHAR(10),
MODIFY AgeCategory VARCHAR(20),
MODIFY Race VARCHAR(30),
MODIFY Diabetic VARCHAR(30),
MODIFY PhysicalActivity VARCHAR(5),
MODIFY GenHealth VARCHAR(15),
MODIFY Asthma VARCHAR(5),
MODIFY KidneyDisease VARCHAR(5),
MODIFY SkinCancer VARCHAR(5);

ALTER TABLE heart_new2
MODIFY BMI FLOAT,
MODIFY PhysicalHealth INT,
MODIFY MentalHealth INT,
MODIFY SleepTime INT;

DESCRIBE heart_new2;

SELECT *
FROM heart_new2
WHERE BMI < 10 OR BMI > 60;

SELECT id, BMI
FROM heart_new2
WHERE BMI < 10 OR BMI > 60;

DELETE FROM heart_new2
WHERE BMI < 10 OR BMI > 60;
SELECT *
FROM heart_new2
WHERE BMI < 10 OR BMI > 60;

SELECT COUNT(*) 
FROM heart_new2;

SELECT *
FROM heart_new2
WHERE PhysicalHealth < 0 OR PhysicalHealth > 30;

SELECT *
FROM heart_new2
WHERE MentalHealth < 0 OR MentalHealth > 30;


SELECT *
FROM heart_new2
WHERE SleepTime < 1 OR SleepTime > 24;

SELECT DISTINCT Smoking
FROM heart_new2;

SELECT DISTINCT Sex
FROM heart_new2;

SELECT DISTINCT HeartDisease
FROM heart_new2;

SELECT DISTINCT AlcoholDrinking
FROM heart_new2;

SELECT *
FROM heart_new2
WHERE PhysicalHealth > 30;

SELECT *
FROM heart_new2
WHERE PhysicalHealth < 0;

SELECT *
FROM heart_new2
WHERE MentalHealth > 30;

SELECT *
FROM heart_new2
WHERE MentalHealth < 0;

SELECT *
FROM heart_new2
WHERE SleepTime < 1 OR SleepTime > 24;

SELECT *
FROM heart_new2
WHERE BMI < 10 OR BMI > 60;

SELECT COUNT(*) 
FROM heart_new2;

SELECT DISTINCT HeartDisease 
FROM heart_new2;

SELECT *
FROM heart_new2
WHERE BMI IS NULL 
OR Smoking IS NULL 
OR HeartDisease IS NULL;
