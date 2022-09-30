USE sales;
CREATE table Product_dw
(prod_id int PRIMARY KEY,
 Prod_name varchar(60) NOT NULL,
 Prod_category varchar(255) NOT NULL,
 Brand_name varchar(255) NOT NULL,
 Suppl_name varchar(255) NOT NULL,
 Prod_price varchar(100));
 
CREATE table Time_dw
(time_id int PRIMARY KEY,
 day DATE NOT NULL,
     month varchar(255) NOT NULL,
     qt varchar(255) NOT NULL,
     yr varchar(255) NOT NULL);
     
CREATE table Location_dw
(loc_id int PRIMARY KEY,
 street varchar(60) NOT NULL,
     city varchar(255) NOT NULL,
     state varchar(255) NOT NULL,
     country varchar(255) NOT NULL);     
     
CREATE table Fact_sales
(prod_id int REFERENCES Product_dw(prod_id),
      time_id int REFERENCES Time_dw(time_id),
      loc_id int REFERENCES Location_dw(loc_id),
      number_of_unit_sold int NOT NULL,
  Total_sales int NOT NULL);    
      
      
      
      
      
      
      
      
      
      
      
      
      
      
     
     