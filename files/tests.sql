-- Script name : tests.sql
-- Author name : Tin Thu Zar Aye
-- Purpose : In this tests.sql, I am testing the integrity of my database model by using the sample data which is inserting in the section IX.


USE OnlineRetailDB;

-- Store Table Testing
DELETE FROM `Store` WHERE store_id = 1;
UPDATE `Store` SET store_id = 55555 WHERE store_id = 5;

SELECT * FROM `Store`;

-- Order Detail Testing
DELETE FROM `Order Detail` WHERE order_detail_id = 1;
UPDATE `Order Detail` SET order_detail_id = 222222 WHERE order_detail_id = 2;

SELECT * FROM `Order Detail`;

-- Credit Card Table Testing
DELETE FROM `Credit Card` WHERE credit_card_id = 1;
UPDATE `Credit Card` SET number = '555555555' WHERE credit_card_id = 3;

SELECT * FROM `Credit Card`;

-- Debit Card Table Testing
DELETE FROM `Debit Card` WHERE debit_card_id = 1;
UPDATE `Debit Card` SET number = '555555555' WHERE debit_card_id = 3;

SELECT * FROM `Debit Card`;

-- Payment Method Table Testing
DELETE FROM `Payment Method` WHERE payment_method_id = 1;
UPDATE `Payment Method` SET credit_card_id = 22222 WHERE payment_method_id = 2;

SELECT * FROM `Payment Method`;

-- CheckOut Table Testing
DELETE FROM `CheckOut` WHERE checkout_id = 1;
UPDATE `CheckOut` SET payment_method_id = 555 WHERE checkout_id = 2;

SELECT * FROM `CheckOut`;

-- Shopping Cart Table Testing
DELETE FROM `Shopping Cart` WHERE shopping_cart_id = 1;
UPDATE `Shopping Cart` SET quantity = 555555 WHERE shopping_cart_id = 5;

SELECT * FROM `Shopping Cart`;

-- Email Address Table Testing
DELETE FROM `Email Address` WHERE email_address_id = 1;
UPDATE `Email Address` SET email = 'newuser@gmail.com' WHERE email_address_id = 2;

SELECT * FROM `Email Address`;

-- Contact Number Table Testing
DELETE FROM `Contact Number` WHERE number = '1111111';
UPDATE `Contact Number` SET contact_number_id = 222 WHERE number = '2222222';

SELECT * FROM `Contact Number`;

-- CustomerServices Table Testing
DELETE FROM `CustomerServices` WHERE contact_number_id = 3;
UPDATE `CustomerServices` SET email_address_id = 11111 WHERE customer_service_id = 1;

SELECT * FROM `CustomerServices`;

-- Rating Table Testing
DELETE FROM `Rating` WHERE rating_id = 1;
UPDATE `Rating` SET rating_id = 11111111 WHERE rating_id = 2;

SELECT * FROM `Rating`;

-- Review Section Table Testing
DELETE FROM `Review Section` WHERE rating_id = 1;
UPDATE `Review Section` SET rating_id = 22222 WHERE rating_id = 2;

SELECT * FROM `Review Section`;

-- Store Website Table Testing
DELETE FROM `Store Website` WHERE shopping_cart_id = 1;
UPDATE `Store Website` SET review_section_id = 22222222 WHERE store_website_id = 2;

SELECT * FROM `Store Website`;

-- Employee Table Testing
DELETE FROM `Employee` WHERE name = 'bob' ;
UPDATE `Employee` SET name = 'Merry' Where employee_id = 2;

SELECT * FROM `Employee`;

-- Department Table Testing
DELETE FROM `Department` WHERE department_name = 'sale department';
UPDATE `Department` SET department_name = 'sale Department' WHERE department_id = 2;

SELECT * FROM `Department`;

-- EmployeeBelongTo Table Testing
DELETE FROM `EmployeeBelongTo` WHERE employee_id = 1;
UPDATE `EmployeeBelongTo` SET employee_id = 2222222 WHERE employeeBelongTo_id = 2;

SELECT * FROM `EmployeeBelongTo`;

-- Categories Table Testing
DELETE FROM `Categories` WHERE categories_id = 1;
UPDATE `Categories` SET categories_id = 222 WHERE categories_id = 2;

SELECT * FROM `Categories`;

-- Products Table Testing
DELETE FROM `Products` WHERE products_id = 1;
UPDATE `Products` SET descriptions = 'Clothings Sections' WHERE products_id = 2;

SELECT * FROM `Products`;

-- CategoriesHasProducts Table Testing
DELETE FROM `CategoriesHasProducts` WHERE categories_id = 1;
UPDATE `CategoriesHasProducts` SET categories_id = 22222 WHERE categoriesHasProducts_id = 2;

SELECT * FROM `CategoriesHasProducts`;

-- CustomerAccessWebsite Table Testing
DELETE FROM `CustomerAccessWebsite` WHERE customer_access_website_id = 1;
UPDATE `CustomerAccessWebsite` SET customer_access_website_id = 22222 WHERE customer_access_website_id = 2;

SELECT * FROM `CustomerAccessWebsite`;

-- User Account Table Testing
DELETE FROM `User Account` WHERE user_account_id = 1;
UPDATE `User Account` SET gmail = 'newUser@gmail.com' WHERE user_account_id = 5;

SELECT * FROM `User Account`;

-- Customer Table Testing
DELETE FROM `Customer` WHERE	customer_id = 1;
UPDATE `Customer` SET useraccount_id = 22222 WHERE useraccount_id = 2;

SELECT * FROM `Customer`; 

-- CustomerReviewProductDetail Table Testing
DELETE FROM `CustomerReviewProductDetail` WHERE customer_id = 2;
UPDATE `CustomerReviewProductDetail` SET product_detail_id = 11111 WHERE customer_review_productDetail_id = 1;

SELECT * FROM `CustomerReviewProductDetail`;

-- ProductDetail Table Testing
DELETE FROM `ProductDetail` WHERE product_detail_id = 1;
UPDATE `ProductDetail` SET description = 'This is the new Description for the product 2' WHERE product_detail_id = 2;

SELECT * FROM `ProductDetail`;

-- ProductHasProductDetail Table Testing
DELETE FROM `ProductHasProductDetail` WHERE product_id = 1;
UPDATE `ProductHasProductDetail` SET product_detail_id = 22222 WHERE productHasProductDetail_id = 2;

SELECT * FROM `ProductHasProductDetail`;

-- Comment Table Testing
DELETE FROM `Comment` WHERE comment_id = 1;
UPDATE `Comment` SET description = 'This is the new description for the comment' WHERE comment_id = 2;

SELECT * FROM `Comment`;