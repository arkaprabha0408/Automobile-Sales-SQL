CREATE TABLE Model ( 
    Model_name VARCHAR2(100) PRIMARY KEY, 
    customer_id NUMBER, 
    brand_id NUMBER, 
    dealer_id NUMBER, 
    style VARCHAR2(50), 
    color VARCHAR2(50), 
    engine VARCHAR2(50), 
    CONSTRAINT fk_customer_model 
    FOREIGN KEY (customer_id) 
    REFERENCES customer(customer_id), 
    CONSTRAINT fk_brand_model 
    FOREIGN KEY (brand_id) 
    REFERENCES brand(brand_id), 
    CONSTRAINT fk_dealer_model 
    FOREIGN KEY (dealer_id) 
    REFERENCES dealer(dealer_id) 
)
