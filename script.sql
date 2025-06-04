-- Find patients who had appointments in the last 7 days.
SELECT DISTINCT P.FirstName, P.LastName
FROM Patients P
JOIN Appointments A ON P.PatientID = A.PatientID
WHERE A.AppointmentDate >= DATEADD(DAY, -7, GETDATE());

--  Find total number of patients registered.
SELECT COUNT(*) AS TotalPatients
FROM Patients;

--  Find the total number of appointments for each doctor.
SELECT S.FirstName, S.LastName, COUNT(A.AppointmentID) AS TotalAppointments
FROM Staff S
JOIN Appointments A ON S.StaffID = A.StaffID
WHERE S.Role = 'Doctor'
GROUP BY S.FirstName, S.LastName;

-- Find all patients with unpaid bills and display their name, bill amount, and billing date.
SELECT 
    p.FirstName + ' ' + p.LastName AS PatientName,
    b.Amount,
    b.BillingDate
FROM Billing b
JOIN Patients p ON b.PatientID = p.PatientID
WHERE b.Status = 'Unpaid';

-- List all patients with their latest medical record (based on RecordDate).
SELECT 
    p.FirstName + ' ' + p.LastName AS PatientName,
    mr.Diagnosis,
    mr.RecordDate
FROM Patients p
JOIN MedicalRecords mr ON p.PatientID = mr.PatientID
ORDER BY mr.RecordDate DESC;

-- Display patient name, diagnosis, medicine prescribed, and dosage.
SELECT 
    p.FirstName + ' ' + p.LastName AS PatientName,
    mr.Diagnosis,
    pr.MedicineName,
    pr.Dosage
FROM Prescriptions pr
JOIN MedicalRecords mr ON pr.RecordID = mr.RecordID
JOIN Patients p ON mr.PatientID = p.PatientID;




