# lab5a

# SQL Queries Documentation

This document provides SQL queries for retrieving information from a dental appointment management system. The queries are designed to fetch details about dentists, appointments, and associated entities such as patients and surgery locations.

## Queries

### 1. Display the list of ALL Dentists registered in the system, sorted in ascending order of their last names

```sql
SELECT *
FROM dentist
ORDER BY name ASC;

SELECT a.*, p.name
FROM Appointment a
INNER JOIN Patient p ON a.patient_id = p.id
WHERE a.dentist_id = 'a5130970-3950-4770-800a-d51ef55d8946';


SELECT a.*, s.name
FROM Appointment a
INNER JOIN surgery s ON a.surgery_id = s.id
WHERE a.surgery_id = '260bd1ae-a02a-43c3-bd18-438208a16430';


SELECT a.*, s.name
FROM Appointment a
INNER JOIN surgery s ON a.surgery_id = s.id
WHERE s.address_id = '47d14b37-eee0-432f-98a4-5c48146b52cf';



```

