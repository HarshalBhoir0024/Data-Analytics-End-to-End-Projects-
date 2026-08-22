CREATE DATABASE customer_analysis;



USE customer_analysis;



CREATE TABLE customer_shopping (
    Customer_ID INT,
    Customer_Age INT,
    Gender VARCHAR(20),
    Product_Name VARCHAR(50),
    Product_Category VARCHAR(50),
    Purchase_Amount_USD DECIMAL(10,2),
    Customer_Location VARCHAR(50),
    Product_Size VARCHAR(10),
    Product_Color VARCHAR(30),
    Purchase_Season VARCHAR(20),
    Review_Rating DECIMAL(3,1),
    Subscription_Status VARCHAR(10),
    Shipping_Type VARCHAR(50),
    Discount_Applied VARCHAR(10),
    Promo_Code_Used VARCHAR(10),
    Previous_Purchases INT,
    Payment_Method VARCHAR(30),
    Purchase_Frequency VARCHAR(30),
    Purchase_Count INT
);






#Total Sales 

SELECT
    SUM(Purchase_Amount_USD) AS Total_Sales
FROM customer_shopping;





# Total Purchases 

select
  sum(Purchase_Count) As Total_Purchases
from customer_shopping;





# Average Purchase

select 
avg(Purchase_Count) As Total_Purchases
from customer_shopping;




# Total Customers

select count(Customer_ID) from customer_shopping;


select 
   count(distinct Customer_ID) As Total_Customers
   from customer_shopping;
   
   
   
   
  
  
#Category Analysis  which category is highest revenue
  
select 
     Product_Category,
     Sum(Purchase_Amount_USD) As Total_Sales
from customer_shopping
group by Product_Category
Order by Total_Sales desc;

   
   
  
  
# Product Analysis

select 
    Product_Name,
    sum(Purchase_Amount_USD) As Total_Sales
From customer_shopping
group by Product_Name
Order by Total_Sales desc;







# Location Analysis

select 
    Customer_Location,
    sum(Purchase_Amount_USD) As Total_Sales
from customer_shopping
group by Customer_Location 
order by Total_Sales desc;





# Season Analysis

select
   Purchase_Season,
   Sum(Purchase_Amount_USD) As Total_Sales
from customer_shopping 
group by Purchase_Season 
Order by Total_Sales desc;







# Payment Analysis


select 
     Payment_Method,
     Sum(Purchase_Amount_USD) As Total_Sales,
     Count(*) As Purchase_Count
From customer_shopping 
group by Payment_Method
Order by Total_Sales desc;




# subcription Analysis

SELECT
    Subscription_Status,
    COUNT(*) AS Purchases,
    SUM(Purchase_Amount_USD) AS Total_Sales
FROM customer_shopping
GROUP BY Subscription_Status;
    




# Discount Analysis

Select 
     Subcription_Status,
     Count(*) As Purchases,
     Sum(Purchase_Amount_USD) As Total_Sales
from customer_shopping
group by Subcription_Status;





## Customer Analysis


SELECT
    Customer_ID,
    SUM(Purchase_Amount_USD) AS Total_Sales
FROM customer_shopping
GROUP BY Customer_ID
ORDER BY Total_Sales DESC
LIMIT 10;












     









