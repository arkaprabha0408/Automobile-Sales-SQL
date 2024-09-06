CREATE TABLE brand ( 
    brand_id NUMBER PRIMARY KEY, 
    brand_name VARCHAR2(100), 
    customer_id NUMBER, 
    CONSTRAINT fk_customer 
    FOREIGN KEY (customer_id) 
    REFERENCES customer(customer_id) 
)
