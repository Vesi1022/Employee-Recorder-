CREATE TABLE employee (
employee_id INT NOT NULL,
first_name VARCHAR (100) NOT NULL,
last_name VARCHAR (100) NOT NULL,
Phone_number VARCHAR (20) NOT NULL,
email VARCHAR (100) NOT NULL
);
CREATE TABLE department (
department_id INT PRIMARY KEY,
department_name VARCHAR (50) NOT NULL,
manager_id INT NOT NULL,
FOREIGN KEY (manager_id) REFERENCES employee (employee_id)
);
CREATE TABLE employee_department (
employee_id INT NOT NULL,
department INT NOT NULL,
PRIMARY KEY  (employee_id,department_id),
FOREIGN KEY (employee_id) REFERENCES employee (employee_id),
FOREIGN KEY (department_id) REFERENCES department (department_id)
);
CREATE TABLE job (
job_id INT PRIMARY KEY,
job_title VARCHAR(30) NOT NULL,
salary DECIMAL(10,2) NOT NULL,
start_date DATE NOT NULL,
employee_id INT NOT NULL,
FOREIGN KEY (employee_id) REFERENCES employee (employee_id)
);


