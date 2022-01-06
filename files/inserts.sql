-- Script name : inserts.sql
-- Author name : Tin Thu Zar Aye
-- Purpose : Inserting some data from for each table to test my OnlineRetailDB.

USE OnlineRetailDB;

-- Store Table Insert
INSERT INTO Store (store_id,name) VALUES(1, 'Clothing Store');
INSERT INTO Store (store_id,name) VALUES(2, 'Convenience Store');
INSERT INTO Store (store_id,name) VALUES(3, 'Furniture Store');
INSERT INTO Store (store_id,name) VALUES(4, 'Electronic Store');
INSERT INTO Store (store_id,name) VALUES(5, 'Gallery Store');

SELECT * FROM Store;

-- Order Detail Table Insert
INSERT INTO `Order Detail` (order_detail_id,checkout_id) VALUES(1,1);
INSERT INTO `Order Detail` (order_detail_id,checkout_id) VALUES(2,2);
INSERT INTO `Order Detail` (order_detail_id,checkout_id) VALUES(3,3);
INSERT INTO `Order Detail` (order_detail_id,checkout_id) VALUES(4,4);
INSERT INTO `Order Detail` (order_detail_id,checkout_id) VALUES(5,5);

SELECT * FROM `Order Detail`;

-- Credit Card Table Insert
INSERT INTO `Credit Card`(credit_card_id,number) VALUES(1,'11111');
INSERT INTO `Credit Card`(credit_card_id,number) VALUES(2,'22222');
INSERT INTO `Credit Card`(credit_card_id,number) VALUES(3,'33333');
INSERT INTO `Credit Card`(credit_card_id,number) VALUES(4,'44444');
INSERT INTO `Credit Card`(credit_card_id,number) VALUES(5,'55555');

SELECT * FROM `Credit Card`;

-- Debit Card Table Insert
INSERT INTO `Debit Card` (debit_card_id,number) VALUES(1,'11111');
INSERT INTO `Debit Card` (debit_card_id,number) VALUES(2,'22222');
INSERT INTO `Debit Card` (debit_card_id,number) VALUES(3,'33333');
INSERT INTO `Debit Card` (debit_card_id,number) VALUES(4,'44444');
INSERT INTO `Debit Card` (debit_card_id,number) VALUES(5,'55555');

SELECT * FROM `Debit Card`;

-- Payment Method Table Insert
INSERT INTO `Payment Method`(payment_method_id,credit_card_id,debit_card_id) VALUES(1,1,1);
INSERT INTO `Payment Method`(payment_method_id,credit_card_id,debit_card_id) VALUES(2,2,2);
INSERT INTO `Payment Method`(payment_method_id,credit_card_id,debit_card_id) VALUES(3,3,3);
INSERT INTO `Payment Method`(payment_method_id,credit_card_id,debit_card_id) VALUES(4,4,4);
INSERT INTO `Payment Method`(payment_method_id,credit_card_id,debit_card_id) VALUES(5,5,5);

SELECT * FROM `Payment Method`;

-- Check Out Table Insert
INSERT INTO `CheckOut`(checkout_id,order_detail_id,payment_method_id) VALUES(1,1,1);
INSERT INTO `CheckOut`(checkout_id,order_detail_id,payment_method_id) VALUES(2,2,2);
INSERT INTO `CheckOut`(checkout_id,order_detail_id,payment_method_id) VALUES(3,3,3);
INSERT INTO `CheckOut`(checkout_id,order_detail_id,payment_method_id) VALUES(4,4,4);
INSERT INTO `CheckOut`(checkout_id,order_detail_id,payment_method_id) VALUES(5,5,5);

SELECT * FROM `Checkout`;

-- Shopping Cart Insert
INSERT INTO `Shopping Cart`(shopping_cart_id,quantity,description,checkout_id) VALUES(1,1,'The shopping card has only 1 quantity',1);
INSERT INTO `Shopping Cart`(shopping_cart_id,quantity,description,checkout_id) VALUES(2,2,'The shopping card has only 2 quantity',2);
INSERT INTO `Shopping Cart`(shopping_cart_id,quantity,description,checkout_id) VALUES(3,3,'The shopping card has only 3 quantity',3);
INSERT INTO `Shopping Cart`(shopping_cart_id,quantity,description,checkout_id) VALUES(4,4,'The shopping card has only 4 quantity',4);
INSERT INTO `Shopping Cart`(shopping_cart_id,quantity,description,checkout_id) VALUES(5,5,'The shopping card has only 5 quantity',5);

SELECT * FROM `Shopping Cart`;

-- Email Address Table Insert
INSERT INTO `Email Address`(email_address_id,email,description) VALUES(1,'store111@gmail.com','This is the email address for the store111');
INSERT INTO `Email Address`(email_address_id,email,description) VALUES(2,'store222@gmail.com','This is the email address for the store222');
INSERT INTO `Email Address`(email_address_id,email,description) VALUES(3,'store333@gmail.com','This is the email address for the store333');


SELECT * FROM `Email Address`;

-- Contact Number Table Insert
INSERT INTO `Contact Number`(contact_number_id,number,description) VALUES(1,'1111111','This is the phone number for store111');
INSERT INTO `Contact Number`(contact_number_id,number,description) VALUES(2,'2222222','This is the phone number for store222');
INSERT INTO `Contact Number`(contact_number_id,number,description) VALUES(3,'3333333','This is the phone number for store333');

SELECT * FROM `Contact Number`;

-- Customer Services Table Insert
INSERT INTO `CustomerServices`(customer_service_id,email_address_id,contact_number_id) VALUES(1,1,1);
INSERT INTO `CustomerServices`(customer_service_id,email_address_id,contact_number_id) VALUES(2,2,2);
INSERT INTO `CustomerServices`(customer_service_id,email_address_id,contact_number_id) VALUES(3,3,3);
INSERT INTO `CustomerServices`(customer_service_id,email_address_id,contact_number_id) VALUES(4,4,4);
INSERT INTO `CustomerServices`(customer_service_id,email_address_id,contact_number_id) VALUES(5,5,5);

SELECT * FROM `CustomerServices`;

-- Rating Table Insert
INSERT INTO `Rating`(rating_id) VALUES(1);
INSERT INTO `Rating`(rating_id) VALUES(2);
INSERT INTO `Rating`(rating_id) VALUES(3);
INSERT INTO `Rating`(rating_id) VALUES(4);
INSERT INTO `Rating`(rating_id) VALUES(5);

SELECT * FROM `Rating`;

-- Review Section Insert
INSERT INTO `Review Section`(review_section_id,rating_id)VALUES(1,1);
INSERT INTO `Review Section`(review_section_id,rating_id)VALUES(2,2);
INSERT INTO `Review Section`(review_section_id,rating_id)VALUES(3,3);
INSERT INTO `Review Section`(review_section_id,rating_id)VALUES(4,4);
INSERT INTO `Review Section`(review_section_id,rating_id)VALUES(5,5);

SELECT * FROM `Review Section`;

-- Store Website Insert
INSERT INTO `Store Website`(store_website_id,shopping_cart_id,customer_service_id,review_section_id) VALUES(1,1,1,1);
INSERT INTO `Store Website`(store_website_id,shopping_cart_id,customer_service_id,review_section_id) VALUES(2,2,2,2);
INSERT INTO `Store Website`(store_website_id,shopping_cart_id,customer_service_id,review_section_id) VALUES(3,3,3,3);
INSERT INTO `Store Website`(store_website_id,shopping_cart_id,customer_service_id,review_section_id) VALUES(4,4,4,4);
INSERT INTO `Store Website`(store_website_id,shopping_cart_id,customer_service_id,review_section_id) VALUES(5,5,5,5);

SELECT * FROM `Store Website`;

-- Employee Insert
INSERT INTO `Employee`(employee_id,name,employee_dob) VALUES(1,'bob',23312000);
INSERT INTO `Employee`(employee_id,name,employee_dob) VALUES(2,'Cherry',23312002);
INSERT INTO `Employee`(employee_id,name,employee_dob) VALUES(3,'Herry',23312003);

SELECT * FROM `Employee`;

-- Department Insert
INSERT INTO `Department`(department_id,department_name)VALUE(1,'sale department');
INSERT INTO `Department`(department_id,department_name)VALUE(2,'store department');
INSERT INTO `Department`(department_id,department_name)VALUE(3,'Retail department');

SELECT * FROM `Department`;

-- EmployeeBelongTo Table Insert
INSERT INTO `EmployeeBelongTo`(employeeBelongTo_id,employee_id,department_id)VALUES(1,1,1);
INSERT INTO `EmployeeBelongTo`(employeeBelongTo_id,employee_id,department_id)VALUES(2,2,2);
INSERT INTO `EmployeeBelongTo`(employeeBelongTo_id,employee_id,department_id)VALUES(3,3,3);

SELECT * FROM `Department`;

-- Categories Table Insert
INSERT INTO `Categories`(categories_id,description)VALUES(1,'Clothing');
INSERT INTO `Categories`(categories_id,description)VALUES(2,'Pants');
INSERT INTO `Categories`(categories_id,description)VALUES(3,'Assessories');

SELECT * FROM `Categories`;

-- Products Table Insert
INSERT INTO `Products`(products_id,descriptions)VALUES(1,'Clothes');
INSERT INTO `Products`(products_id,descriptions)VALUES(2,'Pants');
INSERT INTO `Products`(products_id,descriptions)VALUES(3,'Assessories');

SELECT * FROM `Products`;

-- CategoriesHasProducts Table Insert
INSERT INTO `CategoriesHasProducts`(categoriesHasProducts_id,categories_id,products_id)VALUES(1,1,1);
INSERT INTO `CategoriesHasProducts`(categoriesHasProducts_id,categories_id,products_id)VALUES(2,2,2);
INSERT INTO `CategoriesHasProducts`(categoriesHasProducts_id,categories_id,products_id)VALUES(3,3,3);

SELECT * FROM `CategoriesHasProducts`;

-- CustomerAccessWebsite Table Insert
INSERT INTO `CustomerAccessWebsite`(customer_access_website_id)VALUES(1);
INSERT INTO `CustomerAccessWebsite`(customer_access_website_id)VALUES(2);
INSERT INTO `CustomerAccessWebsite`(customer_access_website_id)VALUES(3);

SELECT * FROM `CustomerAccessWebsite`;

-- User Account Table Insert
INSERT INTO `User Account`(user_account_id,gmail,username)VALUES(1,'user11@gmail.com','user11');
INSERT INTO `User Account`(user_account_id,gmail,username)VALUES(2,'user22@gmail.com','user22');
INSERT INTO `User Account`(user_account_id,gmail,username)VALUES(3,'user33@gmail.com','user33');
INSERT INTO `User Account`(user_account_id,gmail,username)VALUES(4,'user44@gmail.com','user44');
INSERT INTO `User Account`(user_account_id,gmail,username)VALUES(5,'user55@gmail.com','user55');

SELECT * FROM `User Account`;

-- Customer Table Insert
INSERT INTO `Customer`(customer_id,name,address,useraccount_id)VALUES(1,'bob','1000 California Street',1);
INSERT INTO `Customer`(customer_id,name,address,useraccount_id)VALUES(2,'user222','222 California Street',2);
INSERT INTO `Customer`(customer_id,name,address,useraccount_id)VALUES(3,'user333','333 California Street',3);
INSERT INTO `Customer`(customer_id,name,address,useraccount_id)VALUES(4,'user444','444 California Street',4);
INSERT INTO `Customer`(customer_id,name,address,useraccount_id)VALUES(5,'user555','555 California Street',5);

SELECT * FROM `Customer`;

-- CustomerReviewProductDetail Table Insert
INSERT INTO `CustomerReviewProductDetail`(customer_review_productDetail_id,product_detail_id,customer_id)VALUES(1,1,1);
INSERT INTO `CustomerReviewProductDetail`(customer_review_productDetail_id,product_detail_id,customer_id)VALUES(2,2,2);
INSERT INTO `CustomerReviewProductDetail`(customer_review_productDetail_id,product_detail_id,customer_id)VALUES(3,3,3);
INSERT INTO `CustomerReviewProductDetail`(customer_review_productDetail_id,product_detail_id,customer_id)VALUES(4,4,4);
INSERT INTO `CustomerReviewProductDetail`(customer_review_productDetail_id,product_detail_id,customer_id)VALUES(5,5,5);

SELECT * FROM `CustomerReviewProductDetail`;

-- ProductDetail Table Insert
INSERT INTO `ProductDetail`(product_detail_id,description)VALUES(1,'This is the description for the product 11');
INSERT INTO `ProductDetail`(product_detail_id,description)VALUES(2,'This is the description for the product 22');
INSERT INTO `ProductDetail`(product_detail_id,description)VALUES(3,'This is the description for the product 33');
INSERT INTO `ProductDetail`(product_detail_id,description)VALUES(4,'This is the description for the product 44');
INSERT INTO `ProductDetail`(product_detail_id,description)VALUES(5,'This is the description for the product 55');

SELECT * FROM `ProductDetail`;

-- ProductHasProductDetail Table Insert 
INSERT INTO `ProductHasProductDetail`(productHasProductDetail_id,product_id,product_detail_id)VALUES(1,1,1);
INSERT INTO `ProductHasProductDetail`(productHasProductDetail_id,product_id,product_detail_id)VALUES(2,2,2);
INSERT INTO `ProductHasProductDetail`(productHasProductDetail_id,product_id,product_detail_id)VALUES(3,3,3);
INSERT INTO `ProductHasProductDetail`(productHasProductDetail_id,product_id,product_detail_id)VALUES(4,4,4);
INSERT INTO `ProductHasProductDetail`(productHasProductDetail_id,product_id,product_detail_id)VALUES(5,5,5);

SELECT * FROM `ProductHasProductDetail`;

-- Comment Table Insert
INSERT INTO `Comment`(comment_id,description)VALUES(1,'Customer can wirte the comment here');
INSERT INTO `Comment`(comment_id,description)VALUES(2,'Customer can wirte the comment here');
INSERT INTO `Comment`(comment_id,description)VALUES(3,'Customer can wirte the comment here');
INSERT INTO `Comment`(comment_id,description)VALUES(4,'Customer can wirte the comment here');
INSERT INTO `Comment`(comment_id,description)VALUES(5,'Customer can wirte the comment here');

SELECT * FROM `Comment`;