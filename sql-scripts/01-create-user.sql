-- Drop user first if they exist
DROP USER IF EXISTS 'springstudent'@'%';

-- Create the user
CREATE USER 'springstudent'@'%' IDENTIFIED BY 'springstudent';

-- Create the database
CREATE DATABASE IF NOT EXISTS `employee_directory`;

-- Grant privileges on the specific database
GRANT ALL PRIVILEGES ON employee_directory.* TO 'springstudent'@'%';