CREATE TABLE supplier ( 
    supplier_id NUMBER PRIMARY KEY, 
    model_name VARCHAR2(100), 
    supplier_name VARCHAR2(100), 
    CONSTRAINT fk_model_supplier 
    FOREIGN KEY (model_name) 
    REFERENCES Model(Model_name) 
)
