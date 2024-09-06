ALTER TABLE Model
ADD (Vehicle_id NUMBER,
    CONSTRAINT fk_vehicle
    FOREIGN KEY (Vehicle_id)
    REFERENCES vehicle(vehicle_id)
);
