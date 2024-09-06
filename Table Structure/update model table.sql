ALTER TABLE Model
ADD (Vehicle_id NUMBER,
    CONSTRAINT fk_vehicle
    FOREIGN KEY (Vehicle_id)
    REFERENCES vehicle(vehicle_id)
);


UPDATE Model SET Vehicle_id = 1001 WHERE Model_name = 'A4';
UPDATE Model SET Vehicle_id = 1002 WHERE Model_name = 'Huracan';
UPDATE Model SET Vehicle_id = 1003 WHERE Model_name = 'Flying Spur';
UPDATE Model SET Vehicle_id = 1004 WHERE Model_name = 'Royale';
UPDATE Model SET Vehicle_id = 1005 WHERE Model_name = 'Slavia';


ALTER TABLE Model
ADD (Sale_id NUMBER,
    CONSTRAINT fk_sale_model
    FOREIGN KEY (Sale_id)
    REFERENCES Sales(Sale_id)
);

UPDATE Model SET Sale_id = 101 WHERE Model_name='A4';
UPDATE Model SET Sale_id = 102 WHERE Model_name='Huracan';
UPDATE Model SET Sale_id = 103 WHERE Model_name='Flying Spur';
UPDATE Model SET Sale_id = 104 WHERE Model_name='Royale';
UPDATE Model SET Sale_id = 105 WHERE Model_name='Slavia';
commit;
