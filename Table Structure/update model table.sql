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
