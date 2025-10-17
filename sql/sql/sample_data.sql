-- Sample Data for Vehicle Rental Management Database
-- Author: [Your Name]
-- Date: [Today's Date]

-- Insert customers
INSERT INTO customers (customer_id, name, email, phone, address) VALUES
(1, 'Rahul Sharma', 'rahul.sharma@example.com', '9876543210', 'Mumbai, India'),
(2, 'Priya Verma', 'priya.verma@example.com', '9123456789', 'Delhi, India'),
(3, 'Amit Patel', 'amit.patel@example.com', '9988776655', 'Ahmedabad, India');

-- Insert vehicles
INSERT INTO vehicles (vehicle_id, model, brand, type, daily_rate, availability_status) VALUES
(1, 'Swift', 'Maruti Suzuki', 'Car', 1200, 'Available'),
(2, 'Activa 6G', 'Honda', 'Scooter', 600, 'Available'),
(3, 'Classic 350', 'Royal Enfield', 'Bike', 1000, 'Rented'),
(4, 'Ertiga', 'Maruti Suzuki', 'Car', 1800, 'Available');

-- Insert rentals
INSERT INTO rentals (rental_id, customer_id, vehicle_id, start_date, end_date, total_amount, status) VALUES
(1, 1, 1, '2025-09-01', '2025-09-05', 6000, 'Completed'),
(2, 2, 3, '2025-09-10', '2025-09-12', 2000, 'Ongoing'),
(3, 3, 2, '2025-09-15', '2025-09-16', 1200, 'Completed');

-- Insert insurance
INSERT INTO insurance (insurance_id, vehicle_id, provider_name, coverage_amount, expiry_date) VALUES
(1, 1, 'ICICI Lombard', 500000, '2026-03-10'),
(2, 2, 'HDFC ERGO', 300000, '2025-12-20'),
(3, 3, 'Bajaj Allianz', 400000, '2026-05-05');

-- Insert loyalty program data
INSERT INTO loyalty_program (program_id, customer_id, points, tier_level) VALUES
(1, 1, 150, 'Silver'),
(2, 2, 300, 'Gold'),
(3, 3, 50, 'Basic');

-- Insert user accounts
INSERT INTO accounts (account_id, customer_id, username, password_hash, created_at) VALUES
(1, 1, 'rahul123', 'hashed_pw_1', NOW()),
(2, 2, 'priyaV', 'hashed_pw_2', NOW()),
(3, 3, 'amitP', 'hashed_pw_3', NOW());
