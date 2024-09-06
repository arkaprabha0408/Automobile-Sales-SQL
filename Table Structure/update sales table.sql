ALTER TABLE Sales
ADD (Brand_id NUMBER,
    CONSTRAINT fk_brand
    FOREIGN KEY (Brand_id)
    REFERENCES Brand(Brand_id)
);

UPDATE Sales SET Brand_id = 5001 WHERE Sale_id = 101;
UPDATE Sales SET Brand_id = 5002 WHERE Sale_id = 102;
UPDATE Sales SET Brand_id = 5003 WHERE Sale_id = 103;
UPDATE Sales SET Brand_id = 5004 WHERE Sale_id = 104;
UPDATE Sales SET Brand_id = 5005 WHERE Sale_id = 105;
