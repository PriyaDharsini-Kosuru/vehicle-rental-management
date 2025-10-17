-- Vehicle Rental Management Database Schema

CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  phone VARCHAR(20),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE vehicles (
  vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
  registration_no VARCHAR(50) UNIQUE NOT NULL,
  make VARCHAR(100),
  model VARCHAR(100),
  year INT,
  category VARCHAR(50),
  daily_rate DECIMAL(8,2),
  is_available BOOLEAN DEFAULT TRUE
);

CREATE TABLE rentals (
  rental_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT NOT NULL,
  vehicle_id INT NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  total_amount DECIMAL(10,2),
  insurance_id INT,
  loyalty_points_awarded INT DEFAULT 0,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id)
);

CREATE TABLE insurance_plans (
  insurance_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  coverage_details TEXT,
  daily_cost DECIMAL(6,2)
);

CREATE TABLE loyalty_accounts (
  loyalty_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT UNIQUE,
  points INT DEFAULT 0,
  tier VARCHAR(50) DEFAULT 'Bronze',
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
