CREATE TABLE vehicle ( 
    vehicle_id NUMBER PRIMARY KEY, 
    customer_id NUMBER, 
    model_name VARCHAR2(100), 
    supplier_id NUMBER, 
    type VARCHAR2(50), 
    CONSTRAINT fk_customer_vehicle 
    FOREIGN KEY (customer_id) 
    REFERENCES customer(customer_id), 
    CONSTRAINT fk_model_vehicle 
    FOREIGN KEY (model_name) 
    REFERENCES Model(Model_name), 
    CONSTRAINT fk_supplier_vehicle 
    FOREIGN KEY (supplier_id) 
    REFERENCES supplier(supplier_id) 
)
