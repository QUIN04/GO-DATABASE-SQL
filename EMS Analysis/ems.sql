-- USERS table
CREATE TABLE USERS (
    username VARCHAR(16) PRIMARY KEY,
    email VARCHAR(25),
    password VARCHAR(20),
    create_time TIMESTAMP,
    update_time TIMESTAMP,
    date DATE,
    role VARCHAR(45),
    employee_id VARCHAR(8) REFERENCES EMPLOYEES(employee_id)
);

-- EMPLOYEES table
CREATE TABLE EMPLOYEES (
    employee_id VARCHAR(8) PRIMARY KEY,
    employee_name VARCHAR(45),
    employee_dob DATE,
    employee_telnumber INT(12),
    employee_email VARCHAR(20),
    employee_salary INT(9),
    employee_password VARCHAR(20),
    employee_doe DATE,
    dept_id VARCHAR(8) REFERENCES DEPARTMENTS(dept_id)
);

-- DEPARTMENTS table
CREATE TABLE DEPARTMENTS (
    dept_id VARCHAR(8) PRIMARY KEY,
    dept_name VARCHAR(45)
);

-- ATTENDANCE table
CREATE TABLE ATTENDANCE (
    attend_date DATE,
    attend_create_time TIME,
    attend_update_time TIME,
    employee_id VARCHAR(8) REFERENCES EMPLOYEES(employee_id)
);

-- PAYSLIPS table
CREATE TABLE PAYSLIPS (
    pay_date DATE,
    pay_duration TIMESTAMP,
    pay_amount INT,
    pay_tax INT,
    pay_deductions INT,
    employee_id VARCHAR(8) REFERENCES EMPLOYEES(employee_id)
);

-- ROLES table
CREATE TABLE ROLES (
    roles_id VARCHAR(45) PRIMARY KEY,
    roles_title VARCHAR(45),
    dept_id VARCHAR(45) REFERENCES DEPARTMENTS(dept_id)
);

-- ADMINISTRATORS table
CREATE TABLE ADMINISTRATORS (
    admin_id VARCHAR(20) PRIMARY KEY,
    admin_name VARCHAR(45),
    admin_role VARCHAR(45),
    admin_password VARCHAR(45),
    employee_id VARCHAR(8) REFERENCES EMPLOYEES(employee_id)
);
