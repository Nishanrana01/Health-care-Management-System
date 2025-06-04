INSERT INTO Departments (DepartmentID, DepartmentName, Description) VALUES 
(11, 'General Medicine', 'Provides outpatient and inpatient care for adult patients'),
(12, 'Emergency', '24/7 emergency medical and trauma services'),
(13, 'Gynecology & Obstetrics', 'Healthcare for women, pregnancy, and childbirth'),
(14, 'Pediatrics', 'Healthcare services for children and adolescents'),
(15, 'Orthopedics', 'Diagnosis and treatment of bone and joint disorders');

SELECT * FROM Departments;

INSERT INTO Doctors (DoctorID, FirstName, LastName, DepartmentID, Phone, Email) VALUES
(111, 'Suman', 'Shrestha', 11, '9812345670', 'suman.shrestha@hospitalnepal.org'),
(112, 'Aarati', 'Thapa', 12, '9812345671', 'aarati.thapa@hospitalnepal.org'),
(113, 'Ramesh', 'Gurung', 13, '9812345672', 'ramesh.gurung@hospitalnepal.org'),
(114, 'Sarita', 'KC', 14, '9812345673', 'sarita.kc@hospitalnepal.org'),
(115, 'Bikash', 'Karki', 15, '9812345674', 'bikash.karki@hospitalnepal.org'),
(116, 'Puja', 'Rai', 11, '9812345675', 'puja.rai@hospitalnepal.org'),
(117, 'Kiran', 'Lama', 12, '9812345676', 'kiran.lama@hospitalnepal.org'),
(118, 'Manisha', 'Adhikari', 13, '9812345677', 'manisha.adhikari@hospitalnepal.org'),
(119, 'Dipendra', 'Bhandari', 14, '9812345678', 'dipendra.bhandari@hospitalnepal.org'),
(120, 'Anil', 'Maharjan', 15, '9812345679', 'anil.maharjan@hospitalnepal.org'),
(121, 'Bina', 'Sharma', 11, '9812345680', 'bina.sharma@hospitalnepal.org'),
(122, 'Niraj', 'Luitel', 12, '9812345681', 'niraj.luitel@hospitalnepal.org'),
(123, 'Meena', 'Basnet', 13, '9812345682', 'meena.basnet@hospitalnepal.org'),
(124, 'Rajiv', 'Rijal', 14, '9812345683', 'rajiv.rijal@hospitalnepal.org'),
(125, 'Sita', 'Nepali', 15, '9812345684', 'sita.nepali@hospitalnepal.org');

SELECT * FROM Doctors;

INSERT INTO Patients (PatientID, FirstName, LastName, DateOfBirth, Gender, Phone, Email, Address) VALUES
(222, 'Nabin', 'Shrestha', '1995-04-12', 'Male', '9801112233', 'nabin.shrestha@gmail.com', 'Putalisadak, Kathmandu'),
(223, 'Anita', 'Gurung', '2000-08-25', 'Female', '9801112234', 'anita.gurung@gmail.com', 'Mahendrapul, Pokhara'),
(224, 'Bibek', 'Thapa', '1987-01-05', 'Male', '9801112235', 'bibek.thapa@gmail.com', 'Birauta, Pokhara'),
(225, 'Sunita', 'Rai', '1992-06-30', 'Female', '9801112236', 'sunita.rai@gmail.com', 'Nayabazar, Kathmandu'),
(226, 'Prakash', 'Lama', '1990-11-14', 'Male', '9801112237', 'prakash.lama@gmail.com', 'Sundhara, Lalitpur'),
(227, 'Puja', 'Karki', '1996-03-21', 'Female', '9801112238', 'puja.karki@gmail.com', 'Hetauda, Makwanpur'),
(228, 'Ram', 'Adhikari', '1985-09-09', 'Male', '9801112239', 'ram.adhikari@gmail.com', 'New Baneshwor, Kathmandu'),
(229, 'Gita', 'Bhandari', '1993-07-19', 'Female', '9801112240', 'gita.bhandari@gmail.com', 'Srijanachowk, Chitwan'),
(230, 'Dipak', 'Maharjan', '1998-12-03', 'Male', '9801112241', 'dipak.maharjan@gmail.com', 'Kalanki, Kathmandu'),
(231, 'Anju', 'Sharma', '1997-05-22', 'Female', '9801112242', 'anju.sharma@gmail.com', 'Balkot, Bhaktapur'),
(232, 'Rohit', 'KC', '1989-10-16', 'Male', '9801112243', 'rohit.kc@gmail.com', 'Bharatpur, Chitwan'),
(233, 'Nisha', 'Shrestha', '1994-02-27', 'Female', '9801112244', 'nisha.shrestha@gmail.com', 'Kausaltar, Bhaktapur'),
(234, 'Milan', 'Basnet', '1991-11-11', 'Male', '9801112245', 'milan.basnet@gmail.com', 'Satdobato, Lalitpur'),
(235, 'Sabina', 'Tamang', '2002-06-06', 'Female', '9801112246', 'sabina.tamang@gmail.com', 'Damak, Jhapa'),
(236, 'Sagar', 'Rijal', '1986-03-15', 'Male', '9801112247', 'sagar.rijal@gmail.com', 'Dillibazar, Kathmandu');

SELECT * FROM Patients;

INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate, Status) VALUES
(301, 222, 111, '2025-06-01 09:00:00', 'Scheduled'),
(302, 223, 112, '2025-06-01 10:30:00', 'Completed'),
(303, 224, 113, '2025-06-02 14:00:00', 'Scheduled'),
(304, 225, 114, '2025-06-03 11:15:00', 'Cancelled'),
(305, 226, 115, '2025-06-03 13:00:00', 'Scheduled'),
(306, 227, 116, '2025-06-04 08:45:00', 'Scheduled'),
(307, 228, 117, '2025-06-04 15:30:00', 'Completed'),
(308, 229, 118, '2025-06-05 09:15:00', 'Scheduled'),
(309, 230, 119, '2025-06-05 10:45:00', 'No Show'),
(310, 231, 120, '2025-06-06 12:00:00', 'Scheduled'),
(311, 232, 121, '2025-06-07 11:00:00', 'Scheduled'),
(312, 233, 122, '2025-06-07 13:30:00', 'Completed'),
(313, 234, 123, '2025-06-08 09:00:00', 'Scheduled'),
(314, 235, 124, '2025-06-09 10:00:00', 'Cancelled'),
(315, 236, 125, '2025-06-10 11:30:00', 'Scheduled');
 
SELECT * FROM Appointments;

INSERT INTO MedicalRecords (RecordID, PatientID, DoctorID, Diagnosis, Treatment, RecordDate) VALUES
(401, 222, 111, 'Typhoid', 'Prescribed antibiotics and advised rest for 7 days', '2025-06-01'),
(402, 223, 112, 'High Fever and Dehydration', 'IV fluids and paracetamol for 3 days', '2025-06-01'),
(403, 224, 113, 'Pregnancy - First Trimester', 'Routine antenatal checkup and supplements', '2025-06-02'),
(404, 225, 114, 'Common Cold', 'Advised steam inhalation and paracetamol', '2025-06-03'),
(405, 226, 115, 'Fractured Wrist', 'Plaster cast applied; advised X-ray review in 2 weeks', '2025-06-03'),
(406, 227, 116, 'Hypertension', 'Prescribed antihypertensive medications', '2025-06-04'),
(407, 228, 117, 'Dengue Fever', 'Admitted for observation and fluid therapy', '2025-06-04'),
(408, 229, 118, 'Irregular Periods', 'Prescribed hormonal treatment', '2025-06-05'),
(409, 230, 119, 'Pneumonia', 'Prescribed antibiotics and chest physiotherapy', '2025-06-05'),
(410, 231, 120, 'Dislocated Shoulder', 'Shoulder relocation and pain relief meds', '2025-06-06'),
(411, 232, 121, 'Gastric Ulcer', 'Advised dietary changes and proton pump inhibitors', '2025-06-07'),
(412, 233, 122, 'Migraine', 'Painkillers and lifestyle management counseling', '2025-06-07'),
(413, 234, 123, 'Urinary Tract Infection', 'Antibiotics prescribed after urine test', '2025-06-08'),
(414, 235, 124, 'Asthma Attack', 'Inhaler prescribed and breathing exercise advised', '2025-06-09'),
(415, 236, 125, 'Knee Ligament Sprain', 'Rest, compression bandage, and physiotherapy', '2025-06-10');

SELECT * FROM MedicalRecords;

INSERT INTO Prescriptions (PrescriptionID, RecordID, MedicineName, Dosage, Frequency) VALUES
(501, 401, 'Ciprofloxacin 500mg', '1 tablet', 'Twice a day after meals'),
(502, 402, 'Paracetamol 500mg', '1 tablet', 'Every 6 hours as needed'),
(503, 403, 'Folic Acid 5mg', '1 tablet', 'Once daily'),
(504, 404, 'Cetirizine 10mg', '1 tablet', 'Once before sleep'),
(505, 405, 'Aceclofenac 100mg', '1 tablet', 'Twice a day'),
(506, 406, 'Amlodipine 5mg', '1 tablet', 'Once daily in the morning'),
(507, 407, 'ORS Packet', '1 packet', 'After each loose stool'),
(508, 408, 'Dydrogesterone 10mg', '1 tablet', 'Twice a day'),
(509, 409, 'Azithromycin 500mg', '1 tablet', 'Once daily for 3 days'),
(510, 410, 'Ibuprofen 400mg', '1 tablet', 'Thrice a day after food'),
(511, 411, 'Pantoprazole 40mg', '1 tablet', 'Once daily before breakfast'),
(512, 412, 'Sumatriptan 50mg', '1 tablet', 'At onset of migraine'),
(513, 413, 'Nitrofurantoin 100mg', '1 tablet', 'Twice a day for 5 days'),
(514, 414, 'Salbutamol Inhaler', '2 puffs', 'As needed'),
(515, 415, 'Diclofenac Gel', 'Apply locally', 'Twice a day');

SELECT * FROM Prescriptions;

INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email) VALUES
(601, 'Ramesh', 'Poudel', 'Receptionist', '9801234001', 'ramesh.poudel@hospitalnepal.org'),
(602, 'Sunita', 'Tamang', 'Nurse', '9801234002', 'sunita.tamang@hospitalnepal.org'),
(603, 'Keshav', 'Karki', 'Pharmacist', '9801234003', 'keshav.karki@hospitalnepal.org'),
(604, 'Mina', 'Shrestha', 'Lab Technician', '9801234004', 'mina.shrestha@hospitalnepal.org'),
(605, 'Rajesh', 'Lama', 'Billing Clerk', '9801234005', 'rajesh.lama@hospitalnepal.org'),
(606, 'Sabita', 'Gurung', 'Ward Incharge', '9801234006', 'sabita.gurung@hospitalnepal.org'),
(607, 'Bijay', 'Basnet', 'Cleaner', '9801234007', 'bijay.basnet@hospitalnepal.org'),
(608, 'Pramila', 'Adhikari', 'Accountant', '9801234008', 'pramila.adhikari@hospitalnepal.org'),
(609, 'Dinesh', 'Nepali', 'Security Guard', '9801234009', 'dinesh.nepali@hospitalnepal.org'),
(610, 'Kritika', 'Luitel', 'Data Entry Officer', '9801234010', 'kritika.luitel@hospitalnepal.org');

SELECT * FROM Staff;

INSERT INTO Billing (BillID, PatientID, Amount, BillingDate, Status) VALUES
(701, 222, 1500.00, '2025-05-20', 'Paid'),
(702, 223, 3000.00, '2025-05-21', 'Unpaid'),
(703, 224, 4500.50, '2025-05-22', 'Paid'),
(704, 225, 2750.75, '2025-05-23', 'Unpaid'),
(705, 226, 3200.00, '2025-05-23', 'Paid'),
(706, 227, 1800.00, '2025-05-24', 'Paid'),
(707, 228, 3900.00, '2025-05-24', 'Unpaid'),
(708, 229, 2100.00, '2025-05-25', 'Paid'),
(709, 230, 2600.25, '2025-05-25', 'Unpaid'),
(710, 231, 5000.00, '2025-05-26', 'Paid'),
(711, 232, 1500.00, '2025-05-26', 'Unpaid'),
(712, 233, 2800.00, '2025-05-27', 'Paid'),
(713, 234, 3700.50, '2025-05-27', 'Paid'),
(714, 235, 3400.00, '2025-05-28', 'Unpaid'),
(715, 236, 4200.75, '2025-05-28', 'Paid');

SELECT * FROM Billing;

INSERT INTO Users (UserID, Username, Password, Role, StaffID) VALUES
(801, 'admin.bikas', 111, 'Admin', 601),
(802, 'nurse.sandhya', 123, 'Nurse', 602),
(803, 'reception.rupak', 1234, 'Receptionist', 603),
(804, 'lab.shova', 1232, 'Lab Technician', 604),
(805, 'pharma.amrit', 1233, 'Pharmacist', 605),
(806, 'ward.kripa', 1116, 'Ward Incharge', 606),
(807, 'records.dipesh', 12123, 'Records Manager', 607),
(808, 'nurse.jaya', 123, 'Nurse', 608),
(809, 'admin.sunil', 111, 'Admin', 609),
(810, 'hr.rina', 1313, 'HR Manager', 610),
(811, 'user.kritika',1234, 'Receptionist', 603),
(812, 'pharma.dinesh', 1233, 'Pharmacist',605 ),
(813, 'it.bikram', 4588, 'IT Support',610 ),
(814, 'cleaning.kamal', '1111', 'Cleaner', 609),
(815, 'finance.sabina', 5366, 'Finance Officer', 608);
