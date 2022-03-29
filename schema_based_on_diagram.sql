CREATE DATABASE clinic;

CREATE TABLE patients(
 id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
 name VARCHAR(100),
 date_of_birth DATE
)

CREATE TABLE medical_histories (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  admitted_at TIMESTAMP,
  patient_id INT,
  status VARCHAR(100),
  CONSTRAINT fk_patient_id FOREIGN KEY (patient_id) REFERENCES patients(id)
)

CREATE INDEX medical_histories_patient_id  ON medical_histories(patient_id);

CREATE TABLE treatments (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  type VARCHAR(100),
  name VARCHAR(100)
)