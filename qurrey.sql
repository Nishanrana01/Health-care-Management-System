CREATE DATABASE HealthCareDB;
USE HealthCareDB;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    Description VARCHAR(MAX) NULL
);

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DepartmentID INT NULL,
    Phone VARCHAR(15) NULL,
    Email VARCHAR(100) NULL,
    CONSTRAINT FK_Doctors_Departments FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE NULL,
    Gender VARCHAR(10) NULL CHECK (Gender IN ('Male', 'Female', 'Other')),
    Phone VARCHAR(15) NULL,
    Email VARCHAR(100) NULL,
    Address VARCHAR(255) NULL
);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    AppointmentDate DATETIME NOT NULL,
    Status VARCHAR(20) NOT NULL DEFAULT ('Scheduled'),
    CONSTRAINT FK_Appointments_Patients FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    CONSTRAINT FK_Appointments_Doctors FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    Diagnosis VARCHAR(MAX) NULL,
    Treatment VARCHAR(MAX) NULL,
    RecordDate DATE NULL,
    CONSTRAINT FK_MedicalRecords_Patients FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    CONSTRAINT FK_MedicalRecords_Doctors FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE Prescriptions (
    PrescriptionID INT PRIMARY KEY,
    RecordID INT NOT NULL,
    MedicineName VARCHAR(100) NULL,
    Dosage VARCHAR(50) NULL,
    Frequency VARCHAR(50) NULL,
    CONSTRAINT FK_Prescriptions_MedicalRecords FOREIGN KEY (RecordID) REFERENCES MedicalRecords(RecordID)
);

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    FirstName VARCHAR(50) NULL,
    LastName VARCHAR(50) NULL,
    Role VARCHAR(50) NULL,
    Phone VARCHAR(15) NULL,
    Email VARCHAR(100) NULL
);

CREATE TABLE Billing (
    BillID INT PRIMARY KEY,
    PatientID INT NOT NULL,
    Amount DECIMAL(10, 2) NULL,
    BillingDate DATE NULL,
    Status VARCHAR(10) NOT NULL DEFAULT ('Unpaid'),
    CONSTRAINT FK_Billing_Patients FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50)  NOT NULL,
    Password INT NOT NULL,
    Role VARCHAR(50) NOT NULL,  
    StaffID INT NOT NULL,
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);