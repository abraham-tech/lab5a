




-- Display the list of ALL Dentists registered in the system, sorted in ascending order of their lastNames

SELECT *
FROM dentist
ORDER BY name ASC;



-- Display the list of ALL Dentists registered in the system, that match by dentist Id
SELECT a.*, p.name
FROM Appointment a
INNER JOIN Patient p ON a.patient_id = p.id
WHERE a.dentist_id = 'a5130970-3950-4770-800a-d51ef55d8946';



-- Display the list of ALL Appointments for a given Dentist by their dentist_Id number. Include in the result, the Patient information.
SELECT a.*, s.name
FROM Appointment a
INNER JOIN surgery s ON a.surgery_id = s.id
WHERE a.surgery_id = '260bd1ae-a02a-43c3-bd18-438208a16430';




-- Display the list of ALL Appointments that have been scheduled at a Surgery Location


SELECT a.*, s.name
FROM Appointment a
INNER JOIN surgery s ON a.surgery_id = s.id
WHERE s.address_id = '47d14b37-eee0-432f-98a4-5c48146b52cf';




-- Display the list of the Appointments booked for a given Patient on a given Date.

SELECT a.*
FROM Appointment a
WHERE a.patient_id = ?
AND a.date = ?;


