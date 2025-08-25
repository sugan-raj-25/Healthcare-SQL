
-- DROP TABLES IF EXIST TO AVOID DUPLICATION
DROP TABLE IF EXISTS Payments;
DROP TABLE IF EXISTS Medical_Record;
DROP TABLE IF EXISTS Doctors;
DROP TABLE IF EXISTS Patients;
DROP TABLE IF EXISTS Appointments;

-- CREATE DATABASE
CREATE DATABASE IF NOT EXISTS Healthcare;
USE Healthcare;

-- CREATE TABLE: Appointments
CREATE TABLE Appointments (
    Appointment_id INT PRIMARY KEY,
    appointment_date DATE,
    appointment_time TIME
);

-- CREATE TABLE: Patients
CREATE TABLE Patients (
    Patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    Gender VARCHAR(10),
    DOB DATE,
    Mobile_no VARCHAR(15),
    Email VARCHAR(50),
    Appointment_id INT,
    FOREIGN KEY (Appointment_id) REFERENCES Appointments(Appointment_id)
);

-- CREATE TABLE: Doctors
CREATE TABLE Doctors (
    Doctors_id INT PRIMARY KEY,
    Doctor_name VARCHAR(50),
    Clinic_room INT,
    Patient_id INT,
    FOREIGN KEY (Patient_id) REFERENCES Patients(Patient_id)
);

-- CREATE TABLE: Medical_Record
CREATE TABLE Medical_Record (
    Medical_record_id INT PRIMARY KEY,
    Medical_Record VARCHAR(50),
    Patient_id INT,
    FOREIGN KEY (Patient_id) REFERENCES Patients(Patient_id)
);

-- CREATE TABLE: Payments
CREATE TABLE Payments (
    Payment_id INT PRIMARY KEY,
    Amount INT,
    Transfer_date DATE,
    Transfer_time TIME,
    Patient_id INT,
    FOREIGN KEY (Patient_id) REFERENCES Medical_Record(Medical_record_id)
);

-- INSERT DATA INTO Appointments
INSERT INTO Appointments VALUES
(1, '2025-08-12', '09:00:00'),
(2, '2025-08-12', '09:30:00'),
(3, '2025-08-12', '10:00:00'),
(4, '2025-08-12', '10:30:00'),
(5, '2025-08-13', '09:00:00'),
(6, '2025-08-13', '09:30:00'),
(7, '2025-08-13', '10:00:00'),
(8, '2025-08-14', '09:00:00'),
(9, '2025-08-14', '09:30:00'),
(10, '2025-08-14', '10:00:00');

-- INSERT DATA INTO Patients
INSERT INTO Patients VALUES
(101, 'Arun Kumar', 'Male', '1990-05-12', '987654321', 'arun@example.com', 1),
(102, 'Priya Sharma', 'Female', '1988-07-23', '98765000', 'priya@example.com', 2),
(103, 'Rahul Verma', 'Male', '1995-03-11', '987650002', 'rahul@example.com', 3),
(104, 'Meena Rani', 'Female', '1992-12-01', '987650003', 'meena@example.com', 4),
(105, 'Vijay Singh', 'Male', '1985-06-25', '987650004', 'vijay@example.com', 5),
(106, 'Anita Devi', 'Female', '1998-04-14', '987600005', 'anita@example.com', 6),
(107, 'Suresh Kumar', 'Male', '1978-08-20', '987500006', 'suresh@example.com', 7),
(108, 'Kavita Joshi', 'Female', '1993-09-17', '876500007', 'kavita@example.com', 8),
(109, 'Deepak Yadav', 'Male', '1991-11-29', '976500008', 'deepak@example.com', 9),
(110, 'Pooja Nair', 'Female', '1989-01-15', '876500009', 'pooja@example.com', 10);

-- INSERT INTO Doctors
INSERT INTO Doctors VALUES
(201, 'Dr. Ramesh Kumar', 301, 101),
(202, 'Dr. Neha Gupta', 302, 102),
(203, 'Dr. Anil Kapoor', 303, 103),
(204, 'Dr. Rekha Sinha', 304, 104),
(205, 'Dr. Sanjay Mehta', 305, 105),
(206, 'Dr. Sunita Rao', 306, 106),
(207, 'Dr. Ajay Malhotra', 307, 107);

-- INSERT INTO Medical_Record
INSERT INTO Medical_Record VALUES
(301, 'Flu Treatment', 101),
(302, 'Diabetes Checkup', 102),
(303, 'Eye Infection', 103),
(304, 'Blood Pressure', 104),
(305, 'Fracture Followup', 105),
(306, 'Allergy Test', 106),
(307, 'Routine Checkup', 107);

-- INSERT INTO Payments
INSERT INTO Payments VALUES
(401, 500, '2025-08-12', '09:15:00', 301),
(402, 800, '2025-08-12', '09:45:00', 302),
(403, 300, '2025-08-12', '10:15:00', 303),
(404, 450, '2025-08-12', '10:45:00', 304),
(405, 600, '2025-08-13', '09:15:00', 305),
(406, 750, '2025-08-13', '09:45:00', 306),
(407, 500, '2025-08-13', '10:15:00', 307);

-- SELECT, UPDATE, JOIN, GROUP BY, etc.
-- These are identical to what was provided earlier
-- Skipping due to length - can be added in separate script if needed
