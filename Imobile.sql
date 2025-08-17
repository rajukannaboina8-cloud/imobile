Create Database iMobile_Store
use iMobile_Store
 
/*3 main Entityes in mobile store ---
 Mobiles
 Customers
 Bill

 */

 Create table [dbo].[Mobiles]
(
MobileId int identity(1000,1) not null primary key ,
brand varchar(50) not null ,
model varchar(100) not null unique ,
storage_gb smallint not null ,
ram_gb tinyint not null,
color varchar(50),
price decimal(10,2) not null,
purchase_price decimal(10,2) not null,
stock_quantity int not null,
is_5g_enabled varchar(3) not null,
release_year date not null,
)

drop table [Mobiles]


select * from [Mobiles]

INSERT INTO [dbo].[Mobiles] (brand, model, storage_gb, ram_gb, color, price, purchase_price, stock_quantity, is_5g_enabled, release_year) VALUES
('Apple', 'iPhone 13', 128, 6, 'Black', 899.99, 749.99, 50, 'Yes', '2021-09-01'),
('Apple', 'iPhone 14', 256, 6, 'White', 999.99, 799.99, 60, 'Yes', '2022-09-01'),
('Apple', 'iPhone 14 Pro', 512, 8, 'Silver', 1199.99, 999.99, 40, 'Yes', '2022-09-01'),
('Apple', 'iPhone 15', 256, 6, 'Blue', 1099.99, 899.99, 70, 'Yes', '2023-09-01'),
('Apple', 'iPhone SE', 64, 4, 'Red', 499.99, 399.99, 80, 'No', '2020-09-01'),
('Samsung', 'Galaxy S22', 128, 8, 'Gray', 899.99, 699.99, 55, 'Yes', '2022-09-01'),
('Samsung', 'Galaxy S23', 256, 12, 'Black', 999.99, 799.99, 50, 'Yes', '2023-09-01'),
('Samsung', 'Galaxy A52', 128, 6, 'White', 499.99, 399.99, 70, 'No', '2021-09-01'),
('Samsung', 'Galaxy Z Flip', 256, 8, 'Purple', 1099.99, 899.99, 35, 'Yes', '2023-09-01'),
('Samsung', 'Galaxy Note 20', 128, 8, 'Green', 799.99, 649.99, 45, 'Yes', '2020-09-01'),
('OnePlus', 'OnePlus 9', 128, 8, 'Black', 649.99, 549.99, 60, 'Yes', '2021-09-01'),
('OnePlus', 'OnePlus 10 Pro', 256, 12, 'White', 899.99, 749.99, 50, 'Yes', '2022-09-01'),
('OnePlus', 'OnePlus Nord', 128, 6, 'Blue', 499.99, 399.99, 75, 'No', '2020-09-01'),
('OnePlus', 'OnePlus 11', 256, 12, 'Green', 799.99, 649.99, 55, 'Yes', '2023-09-01'),
('OnePlus', 'OnePlus Ace', 128, 8, 'Gray', 599.99, 499.99, 65, 'Yes', '2023-09-01'),
('Xiaomi', 'Redmi Note 11', 128, 6, 'Blue', 299.99, 249.99, 100, 'No', '2021-09-01'),
('Xiaomi', 'Mi 11', 256, 8, 'Black', 699.99, 599.99, 80, 'Yes', '2021-09-01'),
('Xiaomi', 'Poco X3', 128, 6, 'Gray', 349.99, 299.99, 90, 'No', '2020-09-01'),
('Xiaomi', 'Redmi K40', 256, 8, 'White', 599.99, 499.99, 85, 'Yes', '2022-09-01'),
('Xiaomi', 'Mi 12', 256, 12, 'Green', 749.99, 649.99, 60, 'Yes', '2023-09-01'),
('Google', 'Pixel 6', 128, 8, 'Black', 699.99, 599.99, 70, 'Yes', '2021-09-01'),
('Google', 'Pixel 6a', 128, 6, 'White', 449.99, 349.99, 80, 'No', '2022-09-01'),
('Google', 'Pixel 7', 256, 8, 'Green', 799.99, 649.99, 65, 'Yes', '2022-09-01'),
('Google', 'Pixel 7 Pro', 512, 12, 'Silver', 999.99, 849.99, 50, 'Yes', '2023-09-01'),
('Google', 'Pixel 5', 128, 8, 'Gray', 599.99, 499.99, 90, 'No', '2020-09-01');
INSERT INTO [dbo].[Mobiles] (brand, model, storage_gb, ram_gb, color, price, purchase_price, stock_quantity, is_5g_enabled, release_year) VALUES
('Apple', 'iPhone 13 Mini', 128, 4, 'Red', 699.99, 599.99, 40, 'No', '2021-09-01'),
('Samsung', 'Galaxy A72', 128, 6, 'Blue', 449.99, 349.99, 60, 'No', '2021-09-01'),
('OnePlus', 'OnePlus Nord CE', 128, 6, 'Black', 429.99, 329.99, 85, 'No', '2021-09-01'),
('Xiaomi', 'Mi 11 Lite', 128, 6, 'Pink', 379.99, 299.99, 95, 'No', '2021-09-01'),
('Google', 'Pixel 4a', 128, 6, 'Black', 399.99, 299.99, 75, 'No', '2020-09-01'),
('Apple', 'iPhone XR', 64, 4, 'Blue', 399.99, 299.99, 60, 'No', '2019-09-01'),
('Samsung', 'Galaxy M31', 128, 6, 'Red', 349.99, 279.99, 70, 'No', '2020-09-01'),
('OnePlus', 'OnePlus 8T', 256, 12, 'Silver', 749.99, 599.99, 50, 'Yes', '2020-09-01'),
('Xiaomi', 'Redmi 9 Power', 64, 4, 'Green', 199.99, 149.99, 100, 'No', '2021-09-01'),
('Google', 'Pixel 3 XL', 64, 4, 'White', 299.99, 199.99, 40, 'No', '2019-09-01'),
('Apple', 'iPhone 12', 128, 6, 'Black', 799.99, 649.99, 55, 'Yes', '2020-09-01'),
('Samsung', 'Galaxy S21', 256, 8, 'Silver', 899.99, 749.99, 45, 'Yes', '2021-09-01'),
('OnePlus', 'OnePlus 7 Pro', 128, 6, 'Gray', 499.99, 399.99, 65, 'Yes', '2019-09-01'),
('Xiaomi', 'Mi 10T', 128, 6, 'Black', 599.99, 499.99, 70, 'Yes', '2020-09-01'),
('Google', 'Pixel 2', 64, 4, 'Black', 199.99, 149.99, 30, 'No', '2018-09-01'),
('Apple', 'iPhone 11', 128, 6, 'White', 699.99, 549.99, 80, 'No', '2019-09-01'),
('Samsung', 'Galaxy Note 10', 256, 8, 'Black', 899.99, 749.99, 40, 'Yes', '2019-09-01'),
('OnePlus', 'OnePlus X', 64, 4, 'White', 299.99, 199.99, 50, 'No', '2018-09-01'),
('Xiaomi', 'Redmi 8', 64, 4, 'Blue', 179.99, 129.99, 90, 'No', '2019-09-01'),
('Google', 'Pixel 1', 32, 3, 'Black', 149.99, 99.99, 20, 'No', '2017-09-01');




