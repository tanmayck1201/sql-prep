USE sales;
INSERT INTO Product_dw(prod_id,Prod_name,prod_category,Brand_name,Suppl_name,Prod_price)
VALUES(1,'Rice','Grocery','Dawat','Ramesh',140);
describe Product_dw;

INSERT INTO Product_dw(prod_id,Prod_name,prod_category,Brand_name,Suppl_name,Prod_price)
VALUES(2,'Sugar','Grocery','Dawat','Ramesh',50);

INSERT INTO Product_dw(prod_id,Prod_name,prod_category,Brand_name,Suppl_name,Prod_price)
VALUES(3,'Kurta','Cloth','Max','Lila',500);

INSERT INTO Product_dw(prod_id,Prod_name,prod_category,Brand_name,Suppl_name,Prod_price)
VALUES(4,'Jacket','Cloth','Max','Lila',700);

INSERT INTO Time_dw(time_id,day,month,qt,yr)
VALUES(101, DATE '2021-1-17','january','Q1','2021');

INSERT INTO Time_dw(time_id,day,month,qt,yr)
VALUES(102, DATE '2021-2-14','february','Q1','2021');

INSERT INTO Time_dw(time_id,day,month,qt,yr)
VALUES(103, DATE '2021-5-21', 'may','Q2','2021');

INSERT INTO Time_dw(time_id,day,month,qt,yr)
VALUES(104, DATE '2021-6-26', 'june','Q2','2021');

INSERT INTO Location_dw(loc_id,street,city,state,country)
VALUES(201, 'ML ROAD', 'MUMBAI','MAHARASTRA','INDIA');

INSERT INTO Location_dw(loc_id,street,city,state,country)
VALUES(202, 'AI ROAD', 'MUMBAI','MAHARASTRA','INDIA');

INSERT INTO Location_dw(loc_id,street,city,state,country)
VALUES(203, 'BI ROAD', 'KOLKATA','WEST BENGAL','INDIA');

INSERT INTO Location_dw(loc_id,street,city,state,country)
VALUES(204, 'DB ROAD', 'KOLKATA','WEST BENGAL','INDIA');

INSERT INTO 
Fact_sales(prod_id,time_id,loc_id,number_of_unit_sold,Total_sales)
VALUES(1,101,201,400,80000);

INSERT INTO 
Fact_sales(prod_id,time_id,loc_id,number_of_unit_sold,Total_sales)
VALUES(1,102,201,400,90000);

INSERT INTO 
Fact_sales(prod_id,time_id,loc_id,number_of_unit_sold,Total_sales)
VALUES(1,103,201,400,70000);

INSERT INTO 
Fact_sales(prod_id,time_id,loc_id,number_of_unit_sold,Total_sales)
VALUES(1,104,201,400,90000);


SELECT * FROM Product_dw;
SELECT * FROM Time_dw;
SELECT * FROM Location_dw;
SELECT * FROM fact_sales;


