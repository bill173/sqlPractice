https://www.sql-practice.com/
select * from patients

select * from patients where allergies is null

SELECT first_name, last_name, province_name FROM patients p1, provinces p2 where p1.province_id = p2.province_id;

SELECT first_name, last_name, province_name FROM patients JOIN provinces on provinces.province_id = patients.province_id;

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM patients;

SELECT first_name FROM patients GROUP BY first_name HAVING COUNT(first_name) = 1;

--In this example, both patients.patient_id and admissions.patient_id are OK.
SELECT patients.patient_id, first_name,last_name FROM patients 
JOIN admissions ON admissions.patient_id = patients.patient_id 
WHERE primary_diagnosis = 'Dementia';

select patient_id, first_name, last_name from patients order by first_name asc, last_name desc;

SELECT (SELECT count(*) FROM patients WHERE gender='M') AS male_count, 
(SELECT count(*) FROM patients WHERE gender='F') AS female_count;

SELECT first_name, last_name, allergies FROM patients 
WHERE allergies IN ('Penicillin', 'Morphine') 
ORDER BY allergies, first_name, last_name;

--The HAVING clause places the condition in the groups defined by the GROUP BY clause in the SELECT statement.
--The patient having same primary_diagnosis more than once
SELECT patient_id, primary_diagnosis FROM admissions 
GROUP BY patient_id, primary_diagnosis HAVING COUNT(*) > 1;

select city, count(*) as num_patients from patients group by city order by num_patients desc;
--
SELECT first_name FROM patients GROUP BY first_name HAVING COUNT(first_name) = 1

SELECT first_name, last_name, patients.patient_id FROM patients 
JOIN admissions on admissions.patient_id = patients.patient_id WHERE primary_diagnosis = 'Dementia'

select patient_id, primary_diagnosis from admissions GROUP BY patient_id, primary_diagnosis HAVING COUNT(*)>1;