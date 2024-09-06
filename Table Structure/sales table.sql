CREATE TABLE sales ( 
    sale_id NUMBER PRIMARY KEY, 
    vehicle_id NUMBER, 
    customer_id NUMBER, 
    dealer_id NUMBER, 
    price NUMBER, 
    sale_date DATE, 
    CONSTRAINT fk_vehicle_sales 
    FOREIGN KEY (vehicle_id) 
    REFERENCES vehicle(vehicle_id), 
    CONSTRAINT fk_customer_sales 
    FOREIGN KEY (customer_id) 
    REFERENCES customer(customer_id), 
    CONSTRAINT fk_dealer_sales 
    FOREIGN KEY (dealer_id) 
    REFERENCES dealer(dealer_id) 
)
