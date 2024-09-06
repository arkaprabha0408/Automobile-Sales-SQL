CREATE TABLE customer ( 
    Customer_id NUMBER PRIMARY KEY, 
    Name VARCHAR2(50), 
    Address VARCHAR2(150), 
    dob DATE, 
    age number(10), 
    Occupation VARCHAR2(20), 
    Gender VARCHAR2(25), 
    Income NUMBER(20) 
    )

CREATE OR REPLACE TRIGGER check_age_trigger 
BEFORE INSERT OR UPDATE OF dob ON customer 
FOR EACH ROW 
BEGIN 
    :NEW.age := EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM :NEW.dob); 
    IF :NEW.age < 18 THEN 
        RAISE_APPLICATION_ERROR(-20001, 'Age must be 18 or above.'); 
    END IF; 
END;
