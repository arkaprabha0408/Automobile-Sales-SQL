CREATE TABLE dealer ( 
    dealer_id NUMBER PRIMARY KEY, 
    customer_id NUMBER, 
    dealer_name VARCHAR2(100), 
    CONSTRAINT fk_customer_dealer 
    FOREIGN KEY (customer_id) 
    REFERENCES customer(customer_id) 
)
