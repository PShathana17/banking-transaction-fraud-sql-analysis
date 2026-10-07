CREATE DATABASE banking_analytics;
USE banking_analytics;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    account_open_date DATE
);
INSERT INTO customers
(customer_id, customer_name, age, gender, city, account_open_date)
VALUES
(101, 'Arun Kumar', 28, 'Male', 'Coimbatore', '2022-01-15'),
(102, 'Priya Sharma', 32, 'Female', 'Chennai', '2021-06-20'),
(103, 'Rahul Raj', 25, 'Male', 'Bangalore', '2023-02-10'),
(104, 'Divya S', 29, 'Female', 'Madurai', '2022-08-12'),
(105, 'Karthik M', 35, 'Male', 'Salem', '2020-11-05'),
(106, 'Sneha R', 27, 'Female', 'Coimbatore', '2023-04-18'),
(107, 'Vijay Kumar', 41, 'Male', 'Chennai', '2019-09-22'),
(108, 'Anitha P', 30, 'Female', 'Trichy', '2021-12-01'),
(109, 'Suresh B', 38, 'Male', 'Erode', '2020-03-15'),
(110, 'Meena K', 26, 'Female', 'Bangalore', '2023-07-25'),
(111, 'Dinesh R', 45, 'Male', 'Chennai', '2018-05-10'),
(112, 'Kavya S', 24, 'Female', 'Coimbatore', '2024-01-08'),
(113, 'Manoj P', 33, 'Male', 'Madurai', '2022-09-17'),
(114, 'Pooja N', 29, 'Female', 'Salem', '2023-03-22'),
(115, 'Ajay Kumar', 36, 'Male', 'Hyderabad', '2020-07-14'),
(116, 'Harini V', 27, 'Female', 'Chennai', '2024-02-11'),
(117, 'Gokul S', 31, 'Male', 'Coimbatore', '2021-10-19'),
(118, 'Nandhini R', 34, 'Female', 'Madurai', '2020-12-28'),
(119, 'Ramesh K', 40, 'Male', 'Bangalore', '2019-04-16'),
(120, 'Swetha M', 25, 'Female', 'Trichy', '2023-08-30');
SELECT * FROM customers;
CREATE TABLE branches (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100),
    city VARCHAR(50)
);
INSERT INTO branches
(branch_id, branch_name, city)
VALUES
(1, 'RS Puram Branch', 'Coimbatore'),
(2, 'Gandhipuram Branch', 'Coimbatore'),
(3, 'T Nagar Branch', 'Chennai'),
(4, 'Anna Nagar Branch', 'Chennai'),
(5, 'Madurai Main Branch', 'Madurai'),
(6, 'KK Nagar Branch', 'Madurai'),
(7, 'Salem Main Branch', 'Salem'),
(8, 'Trichy Main Branch', 'Trichy'),
(9, 'Erode Main Branch', 'Erode'),
(10, 'Bangalore Main Branch', 'Bangalore'),
(11, 'Whitefield Branch', 'Bangalore'),
(12, 'Hyderabad Main Branch', 'Hyderabad');
SELECT * FROM branches;
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(12,2),
    branch_id INT,

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    FOREIGN KEY (branch_id)
        REFERENCES branches(branch_id)
);
INSERT INTO accounts
(account_id, customer_id, account_type, balance, branch_id)
VALUES
(10001, 101, 'Savings', 85000.00, 1),
(10002, 102, 'Savings', 125000.00, 3),
(10003, 103, 'Savings', 67000.00, 10),
(10004, 104, 'Savings', 92000.00, 5),
(10005, 105, 'Current', 250000.00, 7),
(10006, 106, 'Savings', 54000.00, 2),
(10007, 107, 'Current', 310000.00, 4),
(10008, 108, 'Savings', 78000.00, 8),
(10009, 109, 'Savings', 112000.00, 9),
(10010, 110, 'Savings', 46000.00, 11),
(10011, 111, 'Current', 450000.00, 3),
(10012, 112, 'Savings', 38000.00, 1),
(10013, 113, 'Savings', 98000.00, 5),
(10014, 114, 'Savings', 72000.00, 7),
(10015, 115, 'Current', 275000.00, 12),
(10016, 116, 'Savings', 51000.00, 4),
(10017, 117, 'Savings', 88000.00, 2),
(10018, 118, 'Savings', 105000.00, 6),
(10019, 119, 'Current', 340000.00, 10),
(10020, 120, 'Savings', 62000.00, 8),

-- Additional accounts
(10021, 101, 'Savings', 42000.00, 1),
(10022, 102, 'Current', 180000.00, 3),
(10023, 105, 'Savings', 95000.00, 7),
(10024, 107, 'Savings', 125000.00, 4),
(10025, 111, 'Savings', 87000.00, 3);
SELECT * FROM accounts;

CREATE TABLE merchants (
    merchant_id INT PRIMARY KEY,
    merchant_name VARCHAR(100),
    merchant_category VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO merchants
(merchant_id, merchant_name, merchant_category, city)
VALUES
(201, 'Amazon', 'E-Commerce', 'Chennai'),
(202, 'Flipkart', 'E-Commerce', 'Bangalore'),
(203, 'Swiggy', 'Food Delivery', 'Bangalore'),
(204, 'Zomato', 'Food Delivery', 'Chennai'),
(205, 'Reliance Digital', 'Electronics', 'Coimbatore'),
(206, 'Croma', 'Electronics', 'Chennai'),
(207, 'Apollo Pharmacy', 'Healthcare', 'Coimbatore'),
(208, 'Tata Medicals', 'Healthcare', 'Madurai'),
(209, 'Big Bazaar', 'Grocery', 'Chennai'),
(210, 'Reliance Fresh', 'Grocery', 'Coimbatore'),
(211, 'Myntra', 'Fashion', 'Bangalore'),
(212, 'Madura Fashion', 'Fashion', 'Madurai'),
(213, 'Uber', 'Transportation', 'Chennai'),
(214, 'Ola', 'Transportation', 'Coimbatore'),
(215, 'IRCTC', 'Travel', 'Chennai'),
(216, 'MakeMyTrip', 'Travel', 'Bangalore'),
(217, 'HP Petrol', 'Fuel', 'Coimbatore'),
(218, 'Indian Oil', 'Fuel', 'Madurai'),
(219, 'DMart', 'Grocery', 'Coimbatore'),
(220, 'Tanishq', 'Jewellery', 'Chennai');
SELECT * FROM merchants;

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_date DATETIME,
    transaction_type VARCHAR(20),
    amount DECIMAL(12,2),
    payment_method VARCHAR(30),
    merchant_id INT,
    location VARCHAR(50),
    status VARCHAR(20),

    FOREIGN KEY (account_id)
        REFERENCES accounts(account_id),

    FOREIGN KEY (merchant_id)
        REFERENCES merchants(merchant_id)
);
INSERT INTO transactions
(transaction_id, account_id, transaction_date, transaction_type,
 amount, payment_method, merchant_id, location, status)
VALUES

-- Account 10001
(1, 10001, '2026-01-05 09:15:00', 'Debit', 2500, 'UPI', 203, 'Coimbatore', 'Success'),
(2, 10001, '2026-01-08 14:20:00', 'Debit', 8500, 'Debit Card', 205, 'Coimbatore', 'Success'),
(3, 10001, '2026-01-15 11:10:00', 'Debit', 1200, 'UPI', 210, 'Coimbatore', 'Success'),
(4, 10001, '2026-02-02 18:30:00', 'Debit', 4500, 'UPI', 201, 'Chennai', 'Success'),
(5, 10001, '2026-02-15 10:00:00', 'Credit', 25000, 'Bank Transfer', NULL, 'Coimbatore', 'Success'),

-- Account 10002
(6, 10002, '2026-01-03 10:20:00', 'Debit', 15000, 'Debit Card', 201, 'Chennai', 'Success'),
(7, 10002, '2026-01-10 16:15:00', 'Debit', 4500, 'UPI', 204, 'Chennai', 'Success'),
(8, 10002, '2026-01-18 12:30:00', 'Debit', 22000, 'Debit Card', 206, 'Chennai', 'Success'),
(9, 10002, '2026-02-05 09:45:00', 'Debit', 6000, 'UPI', 209, 'Chennai', 'Success'),
(10, 10002, '2026-02-20 15:30:00', 'Debit', 125000, 'Net Banking', 216, 'Bangalore', 'Success'),

-- Account 10003
(11, 10003, '2026-01-04 08:30:00', 'Debit', 1800, 'UPI', 203, 'Bangalore', 'Success'),
(12, 10003, '2026-01-11 19:20:00', 'Debit', 3200, 'UPI', 202, 'Bangalore', 'Success'),
(13, 10003, '2026-01-20 13:10:00', 'Debit', 7500, 'Debit Card', 211, 'Bangalore', 'Success'),
(14, 10003, '2026-02-08 17:45:00', 'Debit', 9200, 'Debit Card', 202, 'Bangalore', 'Success'),

-- Account 10004
(15, 10004, '2026-01-06 11:15:00', 'Debit', 5000, 'UPI', 208, 'Madurai', 'Success'),
(16, 10004, '2026-01-14 14:40:00', 'Debit', 8500, 'Debit Card', 212, 'Madurai', 'Success'),
(17, 10004, '2026-02-01 09:20:00', 'Debit', 3000, 'UPI', 218, 'Madurai', 'Success'),
(18, 10004, '2026-02-12 20:10:00', 'Debit', 7200, 'UPI', 204, 'Chennai', 'Success'),

-- Account 10005
(19, 10005, '2026-01-02 10:00:00', 'Credit', 150000, 'Bank Transfer', NULL, 'Salem', 'Success'),
(20, 10005, '2026-01-09 12:30:00', 'Debit', 35000, 'Net Banking', 201, 'Chennai', 'Success'),
(21, 10005, '2026-01-25 15:45:00', 'Debit', 42000, 'Net Banking', 206, 'Chennai', 'Success'),
(22, 10005, '2026-02-10 11:00:00', 'Debit', 18000, 'Debit Card', 217, 'Salem', 'Success'),

-- Account 10006
(23, 10006, '2026-01-05 09:00:00', 'Debit', 1200, 'UPI', 203, 'Coimbatore', 'Success'),
(24, 10006, '2026-01-16 18:30:00', 'Debit', 2400, 'UPI', 210, 'Coimbatore', 'Success'),
(25, 10006, '2026-02-05 13:20:00', 'Debit', 4500, 'Debit Card', 207, 'Coimbatore', 'Success'),

-- Account 10007
(26, 10007, '2026-01-03 10:15:00', 'Debit', 25000, 'Net Banking', 201, 'Chennai', 'Success'),
(27, 10007, '2026-01-12 14:10:00', 'Debit', 45000, 'Net Banking', 216, 'Bangalore', 'Success'),
(28, 10007, '2026-01-30 17:30:00', 'Debit', 15000, 'Debit Card', 206, 'Chennai', 'Success'),
(29, 10007, '2026-02-15 12:20:00', 'Debit', 180000, 'Net Banking', 201, 'Chennai', 'Success'),

-- Account 10008
(30, 10008, '2026-01-07 08:45:00', 'Debit', 2200, 'UPI', 204, 'Trichy', 'Success'),
(31, 10008, '2026-01-17 19:00:00', 'Debit', 3500, 'UPI', 209, 'Trichy', 'Success'),
(32, 10008, '2026-02-07 12:30:00', 'Debit', 6700, 'Debit Card', 201, 'Chennai', 'Success'),

-- Account 10009
(33, 10009, '2026-01-05 11:20:00', 'Debit', 5600, 'Debit Card', 205, 'Erode', 'Success'),
(34, 10009, '2026-01-15 15:30:00', 'Debit', 8200, 'UPI', 210, 'Erode', 'Success'),
(35, 10009, '2026-02-03 18:45:00', 'Debit', 15000, 'Debit Card', 217, 'Erode', 'Success'),

-- Account 10010
(36, 10010, '2026-01-08 09:30:00', 'Debit', 1800, 'UPI', 203, 'Bangalore', 'Success'),
(37, 10010, '2026-01-19 13:15:00', 'Debit', 4200, 'UPI', 211, 'Bangalore', 'Success'),
(38, 10010, '2026-02-11 17:20:00', 'Debit', 6500, 'Debit Card', 202, 'Bangalore', 'Failed'),

-- Account 10011
(39, 10011, '2026-01-02 10:10:00', 'Credit', 200000, 'Bank Transfer', NULL, 'Chennai', 'Success'),
(40, 10011, '2026-01-10 11:30:00', 'Debit', 65000, 'Net Banking', 201, 'Chennai', 'Success'),
(41, 10011, '2026-01-20 16:00:00', 'Debit', 75000, 'Net Banking', 206, 'Chennai', 'Success'),
(42, 10011, '2026-02-05 13:30:00', 'Debit', 95000, 'Net Banking', 216, 'Bangalore', 'Success'),

-- Account 10012
(43, 10012, '2026-01-09 10:30:00', 'Debit', 1500, 'UPI', 203, 'Coimbatore', 'Success'),
(44, 10012, '2026-01-21 18:15:00', 'Debit', 2200, 'UPI', 210, 'Coimbatore', 'Success'),
(45, 10012, '2026-02-14 14:20:00', 'Debit', 3500, 'Debit Card', 207, 'Coimbatore', 'Success'),

-- Account 10013
(46, 10013, '2026-01-04 09:40:00', 'Debit', 4500, 'UPI', 208, 'Madurai', 'Success'),
(47, 10013, '2026-01-13 15:20:00', 'Debit', 7200, 'Debit Card', 212, 'Madurai', 'Success'),
(48, 10013, '2026-02-04 11:30:00', 'Debit', 11000, 'UPI', 218, 'Madurai', 'Success'),

-- Account 10014
(49, 10014, '2026-01-06 10:00:00', 'Debit', 3200, 'UPI', 209, 'Salem', 'Success'),
(50, 10014, '2026-01-18 16:40:00', 'Debit', 5500, 'Debit Card', 212, 'Salem', 'Success'),
(51, 10014, '2026-02-10 19:30:00', 'Debit', 8500, 'UPI', 203, 'Salem', 'Success'),

-- Account 10015
(52, 10015, '2026-01-03 08:30:00', 'Debit', 45000, 'Net Banking', 201, 'Hyderabad', 'Success'),
(53, 10015, '2026-01-15 12:20:00', 'Debit', 55000, 'Net Banking', 216, 'Bangalore', 'Success'),
(54, 10015, '2026-02-08 14:50:00', 'Debit', 75000, 'Net Banking', 201, 'Chennai', 'Success'),

-- Account 10016
(55, 10016, '2026-01-07 11:30:00', 'Debit', 2500, 'UPI', 204, 'Chennai', 'Success'),
(56, 10016, '2026-01-20 17:10:00', 'Debit', 4200, 'UPI', 209, 'Chennai', 'Success'),
(57, 10016, '2026-02-09 09:15:00', 'Debit', 3800, 'Debit Card', 206, 'Chennai', 'Success'),

-- Account 10017
(58, 10017, '2026-01-05 10:20:00', 'Debit', 3200, 'UPI', 203, 'Coimbatore', 'Success'),
(59, 10017, '2026-01-16 15:40:00', 'Debit', 7800, 'Debit Card', 205, 'Coimbatore', 'Success'),
(60, 10017, '2026-02-12 18:20:00', 'Debit', 6500, 'UPI', 210, 'Coimbatore', 'Success'),

-- Account 10018
(61, 10018, '2026-01-08 09:45:00', 'Debit', 4200, 'UPI', 208, 'Madurai', 'Success'),
(62, 10018, '2026-01-19 14:30:00', 'Debit', 6800, 'Debit Card', 212, 'Madurai', 'Success'),
(63, 10018, '2026-02-06 16:20:00', 'Debit', 9500, 'UPI', 218, 'Madurai', 'Success'),

-- Account 10019
(64, 10019, '2026-01-04 11:00:00', 'Debit', 55000, 'Net Banking', 201, 'Bangalore', 'Success'),
(65, 10019, '2026-01-14 13:30:00', 'Debit', 75000, 'Net Banking', 216, 'Bangalore', 'Success'),
(66, 10019, '2026-02-03 17:00:00', 'Debit', 120000, 'Net Banking', 201, 'Chennai', 'Success'),

-- Account 10020
(67, 10020, '2026-01-09 10:30:00', 'Debit', 2300, 'UPI', 204, 'Trichy', 'Success'),
(68, 10020, '2026-01-22 18:20:00', 'Debit', 4600, 'UPI', 209, 'Trichy', 'Success'),
(69, 10020, '2026-02-13 12:40:00', 'Debit', 7200, 'Debit Card', 201, 'Chennai', 'Success'),

-- Suspicious rapid transactions for Account 10002
(70, 10002, '2026-02-25 10:01:00', 'Debit', 45000, 'Debit Card', 201, 'Chennai', 'Success'),
(71, 10002, '2026-02-25 10:04:00', 'Debit', 48000, 'Debit Card', 201, 'Chennai', 'Success'),
(72, 10002, '2026-02-25 10:07:00', 'Debit', 52000, 'Debit Card', 201, 'Chennai', 'Success'),

-- Suspicious high-value transactions
(73, 10003, '2026-02-26 14:20:00', 'Debit', 150000, 'Net Banking', 216, 'Delhi', 'Success'),
(74, 10007, '2026-02-26 15:10:00', 'Debit', 200000, 'Net Banking', 216, 'Mumbai', 'Success'),

-- Failed transaction pattern
(75, 10010, '2026-02-27 10:00:00', 'Debit', 25000, 'Debit Card', 202, 'Bangalore', 'Failed'),
(76, 10010, '2026-02-27 10:03:00', 'Debit', 30000, 'Debit Card', 202, 'Bangalore', 'Failed'),
(77, 10010, '2026-02-27 10:06:00', 'Debit', 35000, 'Debit Card', 202, 'Bangalore', 'Failed'),

-- Location anomaly
(78, 10001, '2026-02-28 09:00:00', 'Debit', 15000, 'Debit Card', 205, 'Coimbatore', 'Success'),
(79, 10001, '2026-02-28 09:10:00', 'Debit', 18000, 'Debit Card', 206, 'Chennai', 'Success'),
(80, 10001, '2026-02-28 09:20:00', 'Debit', 22000, 'Debit Card', 201, 'Bangalore', 'Success');
select * from transactions;

-- 1.Display all customers.
select * from customers;

-- 2.Display all accounts.
select * from accounts;

-- 3.Display all transactions.
select * from transactions;

-- 4.Display all merchants.
select * from merchants;

-- 5.Display all branches.
select * from branches;

-- 6.Find customer names and cities.
select customer_name,city from customers;

-- 7.Find customers older than 30.
SELECT *
FROM customers
WHERE age > 30;

-- 8.Find customers from Coimbatore.
select customer_name,city from customers
where city = 'Coimbatore';

-- 9.Find savings accounts.
select * from accounts
where account_type='Savings';

-- 10.Find current accounts.
select * from accounts
where account_type='Current';

-- 11.Find accounts with balance above ₹100,000.
select * from  accounts
where balance > 100000;

-- 12.Find transactions above ₹50,000.
select * from transactions 
where amount > 50000;

-- 13.Find successful transactions.
select * from transactions 
where status='Success';

-- 14.Find failed transactions.
SELECT *
FROM transactions
WHERE status = 'Failed';

-- 15.Find UPI transactions.
select * from transactions 
where payment_method='UPI';

-- 16.Find debit transactions.
select * from transactions 
where transaction_type='Debit';

-- 17.Find credit transactions.
select * from transactions 
where transaction_type='Credit';

-- 18.Find customers between age 25 and 35.
select * from customers
where age between 25 and 35 ;

-- 19.Find customers from Chennai or Coimbatore.
select * from customers
where city in ('Chennai','Coimbatore');

-- 20.Sort customers by age.
select * from customers
order by age ;

select * from customers
order by age  desc;

#---------------------------------->>> Level 2 — Aggregation
-- 21.Count customers.
select count(*)as customer from customers;


-- 22.Count transactions
select count(*)as customer from  transactions;

-- 23.Calculate total transaction amount.
select sum(amount)as total_transcation 
from  transactions;

-- 24.Calculate average transaction amount.
select avg(amount)as avg_transcation 
from  transactions;

-- 25.Find the maximum transaction.
select max(amount)as maximum_transcation 
from  transactions;

-- 26.Find the minimum transaction.
select min(amount)as minimum_transcation 
from  transactions;

-- 27.Count successful transactions.
select 
count(*)as count_status 
from transactions 
where status='Success';

-- 28.Count failed transactions.
select 
count(*)as failed_status 
from transactions 
where status='Failed';

-- 29.Calculate total debit amount.
select sum(amount)as total_debit
from transactions 
where transaction_type='Debit';

-- 30.Calculate total credit amount.
select sum(amount)as total_credit
from transactions 
where transaction_type='credit';

select *
from transactions ;

-- 31.Count customers by gender.
select gender,count(*)from customers
group by gender;

-- 32.Count customers by city.
select city,count(*) from customers
group by city;

-- 33.Calculate average age by gender.
select gender,avg(age)as avg_age from customers
group by gender;

-- 34.Count accounts by account type.
select account_type,count(account_type) from accounts
group by account_type;

-- 35.Calculate average balance by account type.
select account_type,avg(balance)as avg_balance 
from accounts
group by account_type;

-- 36.Calculate total balance by account type.
select account_type,sum(balance)as total_balance 
from accounts
group by account_type;

-- 37.Count transactions by payment method.
select payment_method,count(payment_method)as count_by_payment_method 
from transactions
group by payment_method;

-- 38.Calculate transaction amount by payment method.
select payment_method,sum(amount)as total_amount 
from transactions
group by payment_method;

-- 39.Count transactions by status.
select status,count(*)
from transactions
group by status;

#-------------------------->>>>>> Level 3 — GROUP BY & HAVING

-- 40.Find cities with more than 2 customers.
SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city
HAVING COUNT(*) > 2;

-- 41.Find account types with average balance above ₹100,000.
SELECT account_type, AVG(balance) AS average_balance
FROM accounts
GROUP BY account_type
HAVING AVG(balance) > 100000;

-- 42.Find payment methods with more than 10 transactions.
select payment_method,count(payment_method)as count_payment_method 
from  transactions
group by payment_method 
having count(*)>10;

-- 43.Find merchants with more than 2 transactions.
SELECT merchant_id,
       COUNT(merchant_id) AS transaction_count
FROM transactions
GROUP BY merchant_id
HAVING COUNT(merchant_id) > 2;

-- 44.Find accounts with total transaction value above ₹100,000.
SELECT account_id,
       SUM(amount) AS total_transaction_value
FROM transactions
GROUP BY account_id
HAVING SUM(amount) > 100000;

-- 45.Find accounts with more than 3 transactions.
SELECT account_id,
       COUNT(*) AS transaction_count
FROM transactions
GROUP BY account_id
HAVING COUNT(*) > 3;

-- 46.Find cities with total account balance above ₹200,000.
SELECT c.city,
       SUM(a.balance) AS total_balance
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
GROUP BY c.city
HAVING SUM(a.balance) > 200000;
select * from customers;

-- 47.Find merchant categories with transaction value above ₹100,000.
SELECT m.merchant_category,
       SUM(t.amount) AS total_transaction_value
FROM transactions t
JOIN merchants m
    ON t.merchant_id = m.merchant_id
GROUP BY m.merchant_category
HAVING SUM(t.amount) > 100000;

-- 48.Find customers with more than one account.
select c.customer_id,count(c.customer_id)
 from customers c 
 join accounts a
 on c.customer_id = a.customer_id
 group  by c.customer_id
 having count(a.account_id)>1;

select * from accounts;
select * from customers;
select * from transactions;

-- 49.Find customers with total balance above ₹150,000.
select c.customer_id,sum(a.balance)as total_amount
from customers c 
join accounts a
on c.customer_id=a.customer_id
group by c.customer_id
having sum(a.balance)>150000;

-- 50.Find merchants with average transaction above ₹20,000.
SELECT m.merchant_id,
       AVG(t.amount) AS avg_transaction
FROM transactions t
JOIN merchants m
    ON m.merchant_id = t.merchant_id
GROUP BY m.merchant_id
HAVING AVG(t.amount) > 20000;

-- 51.Find locations with more than 5 transactions.
SELECT location,
       COUNT(account_id) AS transaction_count
FROM transactions
GROUP BY location
HAVING COUNT(account_id) > 5;

-- 52.Find locations with transaction value above ₹200,000.
SELECT location,
       SUM(amount) AS total_transaction_value
FROM transactions
GROUP BY location
HAVING SUM(amount) > 200000;

-- 53.Find customers with average transaction above ₹20,000.
select a.customer_id,avg(t.amount)
from accounts a  
join transactions t
on a.account_id=t.account_id
group by a.customer_id
having avg(amount)>20000;

-- 54.Find accounts with both debit and credit transactions.
select account_id
from transactions
where transaction_type in ('Debit','Credit')
group by account_id 
having  count(distinct transaction_type)=2 ;

-- Level 4 — JOINs

-- 55.Show customer and account details.
select c.customer_id,
a.account_id,
c.customer_name,
c.age,
a.account_type,
a.balance
from customers c
join accounts a
on c.customer_id=a.customer_id;

-- 56.Show customer and transaction details.
SELECT c.customer_id,
       c.customer_name,
       c.age,
       a.account_id,
       a.account_type,
       a.balance,
       t.transaction_id,
       t.transaction_type,
       t.amount,
       t.transaction_date
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id;

-- 57.Show customer and merchant details.
SELECT c.customer_id,
       c.customer_name,
       c.age,
       m.merchant_id,
       m.merchant_name,
       m.merchant_category
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
JOIN  merchants m
	ON m.merchant_id=t.merchant_id;

-- 58.Show account and branch details.
SELECT a.account_id,
		a.account_type,
        b.branch_id,
        b.branch_name
FROM  accounts a
join  branches b
    ON a.branch_id=b.branch_id;
	
-- 59.Show customer and branch details.
SELECT c.customer_id,
		c.customer_name,
		a.account_type,
        b.branch_id,
        b.branch_name
FROM  accounts a
join  branches b
    ON a.branch_id=b.branch_id
join  customers c 
	on c.customer_id=a.customer_id;
    
-- 60Find transactions with customer names.
SELECT t.transaction_id,
       t.transaction_type,
       t.transaction_date,
	   c.customer_id,
       c.customer_name,
       a.balance,
       t.amount
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id;

-- 61.Find customer transaction locations.
SELECT t.transaction_id,
       t.transaction_type,
       t.transaction_date,
       t.location,
       c.customer_id,
       c.customer_name,
       c.city,
       a.balance,
       t.amount
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id;

-- 62.Show merchant category for each transaction.
SELECT t.transaction_id,
       m.merchant_id,
       m.merchant_name,
	   m.merchant_category,
       t.transaction_date
FROM  merchants m
JOIN transactions t
    ON m.merchant_id = t.merchant_id;

-- 63.Find Coimbatore customers and their transactions.
SELECT c.customer_id,
       c.customer_name,
       c.city,
       a.account_id,
       t.transaction_id,
       t.transaction_type,
       t.transaction_date
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
where c.city='Coimbatore';

-- 64.Find Chennai merchants and their transactions.
SELECT t.transaction_id,
       m.merchant_id,
       m.merchant_name,
       m.city,
	   m.merchant_category,
       t.transaction_date
FROM  merchants m
JOIN transactions t
    ON m.merchant_id = t.merchant_id
where m.city='Chennai';

-- 65.Find customers using UPI.
SELECT c.customer_id,
	   a.account_id,
       c.customer_name,
       t.transaction_id,
       t.payment_method,
       a.balance,
       t.amount
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
where payment_method='UPI';

-- 66.Find customers with failed transactions.
SELECT c.customer_id,
	   a.account_id,
       c.customer_name,
       t.transaction_id,
       t.status,
       a.balance,
       t.amount
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
where t.status='Failed';

-- 67.Find customers with high-value transactions.
SELECT c.customer_name,
       t.transaction_id,
       t.amount
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
where t.amount >(select avg(amount) from transactions);

-- 68.Calculate total spending for each customer.
SELECT c.customer_id,
	   c.customer_name,
       sum(t.amount)
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
group by c.customer_id,c.customer_name;

-- 69.Calculate transaction count for each customer.
SELECT c.customer_id,
	   c.customer_name,
       count(t.amount)
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
group by c.customer_id,c.customer_name;

-- 70.Calculate total spending by city.
SELECT c.city,
       sum(t.amount)
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
group by c.city;

-- 71.Calculate total transaction amount by branch.
SELECT b.branch_id,
		sum(t.amount)
FROM  accounts a
join  branches b
    ON a.branch_id=b.branch_id
join  customers c 
	on c.customer_id=a.customer_id
join  transactions t
	on t.account_id=a.account_id
group by b.branch_id;

-- 72.Calculate total transaction amount by merchant category.
SELECT m.merchant_category,
       sum(t.amount)
FROM  merchants m
JOIN transactions t
    ON m.merchant_id = t.merchant_id
group by m.merchant_category;

-- 73.Calculate average transaction by merchant category.
SELECT m.merchant_category,
       avg(t.amount)
FROM  merchants m
JOIN transactions t
    ON m.merchant_id = t.merchant_id
group by m.merchant_category;

-- 74.Find the highest-spending customer.
SELECT c.customer_name,
       sum(t.amount)as highest_spend
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
group by c.customer_name
order by highest_spend desc
limit 1;

-- 75.Find the most-used merchant.
SELECT m.merchant_id,
       m.merchant_name,
       count(t.transaction_id),
       m.merchant_category
FROM transactions t
JOIN  merchants m
	ON m.merchant_id=t.merchant_id
group by merchant_id,m.merchant_name,m.merchant_category
order by  count(t.transaction_id) desc limit 1;

-- 76.Find the merchant category with the highest transaction value.
SELECT m.merchant_category,
	   sum(t.amount)
FROM  merchants m
JOIN transactions t
    ON m.merchant_id = t.merchant_id
group by m.merchant_category
order by sum(t.amount) desc limit 1;

-- 77.Find the customer with the highest account balance.
select c.customer_id,
c.customer_name,
c.age,
a.account_type,
sum(a.balance)as highest_account_balance
from customers c
join accounts a
on c.customer_id=a.customer_id
GROUP BY c.customer_id, c.customer_name, c.age, a.account_type
order by sum(a.balance)desc limit 1 ;

-- 78. Find the customer with the highest account balance.-- (another way)
SELECT c.customer_id,
       c.customer_name,
       c.age,
       SUM(a.balance) AS total_balance
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.customer_name, c.age
ORDER BY total_balance DESC
LIMIT 1;

-- 79.Find customers without transactions.
SELECT c.customer_id,
       c.customer_name
FROM customers c
LEFT JOIN accounts a
    ON c.customer_id = a.customer_id
LEFT JOIN transactions t
    ON a.account_id = t.account_id
WHERE t.transaction_id is null;

-- 80.Find merchants without transactions.
SELECT t.transaction_id,
       m.merchant_id,
       m.merchant_name,
	   m.merchant_category,
       t.transaction_date
FROM  merchants m
left JOIN transactions t
    ON m.merchant_id = t.merchant_id
where t.transaction_id is null;

-- =====================================================
-- LEVEL 5 — CASE & BUSINESS ANALYSIS
-- =====================================================
-- 81. Categorize transactions by amount.
select transaction_id,
	amount,
    case 
		when amount < 1000 then "Low Amount"
        when amount between 1000 and 5000 then "Medium Amount"
        when amount between 5001 and 20000 then "high Amount"
        else "Very High"
	end as  amount_category
from transactions;

-- 82. Create transaction risk levels.
select transaction_id,
	amount,
    case 
		when amount < 1000 then "Low risk"
        when amount between 1000 and 5000 then "Medium risk"
        when amount between 5001 and 20000 then "high risk"
        else "Very High risk"
	end as  risk_level_category
from transactions;

-- 83. Categorize customers by age.
select customer_id,
	customer_name,
	age,
    case 
		when age <  30 then "Young aged"
        when age between 30 and 55 then "Middle aged person"
        else "Senior Citizen"
	end as  age_category
from customers;

-- 84. Categorize accounts by balance.
select account_id,
	balance,
    case 
		when balance< 1000 then "Low Amount"
        when balance between 1000 and 5000 then "Medium Amount"
        when balance between 5001 and 20000 then "high Amount"
        else "Very High"
	end as  balance_category
from  accounts;

-- 85. Calculate transaction status percentages.
select 
	status,
	count(*)as total_count,
	count(*)*100 /(select count(*) from  transactions) as Status_Percentage
from  transactions
group by status;
#  GROUP BY → Separate statuses,COUNT(*) → Count each status ,Subquery COUNT(*) → Count everything,× 100 / total → Find percentage

-- 86. Compare UPI, card, and other payment methods.
SELECT payment_method,
       COUNT(payment_method) AS total_transactions
FROM transactions
GROUP BY payment_method;
 
-- 87. Count high-value transactions.
select count(*)       #Count all rows --- COUNT(*) including non null values
from transactions
where amount >(select avg(amount) from transactions);

-- 88. Calculate the percentage of high-value transactions.
#Take transactions → find average → keep amounts above average → count them → calculate their percentage.
select count(*) ,
      count(*)*100/(select count(*) from transactions)
from transactions
where amount >(select avg(amount)as avg_amount from transactions);

-- 89. Compare debit and credit transaction amounts.
SELECT transaction_type,
       SUM(amount) AS total_amount
FROM transactions
GROUP BY transaction_type;

-- 90. Calculate successful transaction amount.
SELECT SUM(amount) AS total_successful_amount
FROM transactions
WHERE status = 'Success';

-- 91. Calculate failed transaction amount.
SELECT SUM(amount) AS total_failed_amount
FROM transactions
WHERE status = 'Failed';

-- 92. Find suspicious transactions.
select transaction_id,
		payment_method,
        account_id,
        status
from transactions
where amount >(select avg(amount) from transactions);

-- 93. Find high-risk transactions.
SELECT transaction_id,
       amount
FROM transactions
WHERE amount BETWEEN 5001 AND 20000;

-- 94. Classify transactions by time of day.
select transaction_date,
CASE
    WHEN hour(transaction_date) between 5 and 11 then  'Morning'
    WHEN hour(transaction_date) between 12 and 16 then 'Afternoon'
    WHEN hour(transaction_date) between 17 and 18 then 'Evening'
    ELSE 'Night'
END as time_category
FROM transactions;

-- 95. Classify transaction size by payment method.
SELECT payment_method,
       transaction_id,
       amount,
       CASE
           WHEN amount < 1000 THEN 'Low Size'
           WHEN amount BETWEEN 1000 AND 5000 THEN 'Medium Size'
           WHEN amount BETWEEN 5001 AND 20000 THEN 'High Size'
           ELSE 'Very High Size'
       END AS transaction_size
FROM transactions;

-- 96. Categorize customers based on spending.
SELECT c.customer_id,
	   c.customer_name,
       SUM(t.amount) AS total_spending,
       CASE
           WHEN SUM(t.amount) < 10000 THEN 'Low Spender'
           WHEN SUM(t.amount) BETWEEN 10000 AND 50000 THEN 'Medium Spender'
           ELSE 'High Spender'
       END AS spending_category
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY c.customer_id, c.customer_name;

-- 97. Count failed transactions per account.
select account_id,
	count(transaction_id)
from transactions
where status='Failed'
group by account_id;

-- 98. Find accounts with 2 or more failed transactions.
select account_id,
	count(transaction_id)
from transactions
where status='Failed'
group by account_id
having count(transaction_id)>= 2;


-- 99. Find transactions during evening hours.
select transaction_date,
transaction_id
FROM transactions
 where hour(transaction_date) between 17 and 18 ;

-- 100. Find transactions during morning hours.
select transaction_date,
transaction_id
FROM transactions
 where hour(transaction_date) between 5 and 11;
