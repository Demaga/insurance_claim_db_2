-- insert states
INSERT INTO state (state_name) values('OH');
INSERT INTO state (state_name) values('IL');
INSERT INTO state (state_name) values('IN');
INSERT INTO state (state_name) values('MD');
INSERT INTO state (state_name) values('NJ');
INSERT INTO state (state_name) values('PR');
INSERT INTO state (state_name) values('PA');
INSERT INTO state (state_name) values('OK');
INSERT INTO state (state_name) values('WI');
INSERT INTO state (state_name) values('VI');

-- insert education types
INSERT INTO education (education_type_name) values('PhD');
INSERT INTO education (education_type_name) values('Masters');
INSERT INTO education (education_type_name) values('Associate');
INSERT INTO education (education_type_name) values('College');
INSERT INTO education (education_type_name) values('MD');
INSERT INTO education (education_type_name) values('JD');
INSERT INTO education (education_type_name) values('High School');

-- insert incident types
INSERT INTO incident_type (incident_type_name) values('Single Vehicle Collision');
INSERT INTO incident_type (incident_type_name) values('Vehicle Theft');
INSERT INTO incident_type (incident_type_name) values('Multi-vehicle Collision');
INSERT INTO incident_type (incident_type_name) values('Parked Car');

-- insert collision types
INSERT INTO collision_type (collision_type_name) values('Rear Collision');
INSERT INTO collision_type (collision_type_name) values('Front Collision');
INSERT INTO collision_type (collision_type_name) values('Side Collision');
INSERT INTO collision_type (collision_type_name) values('?');

-- insert policies
INSERT INTO policy (policy_number, bind_date, state_name) values(1001, TO_DATE('2020-01-01','YYYY-MM-DD'), 'OH');
INSERT INTO policy (policy_number, bind_date, state_name) values(1002, TO_DATE('2020-01-01','YYYY-MM-DD'), 'OH');
INSERT INTO policy (policy_number, bind_date, state_name) values(1003, TO_DATE('2020-01-02','YYYY-MM-DD'), 'OH');
INSERT INTO policy (policy_number, bind_date, state_name) values(1004, TO_DATE('2020-01-03','YYYY-MM-DD'), 'OH');
INSERT INTO policy (policy_number, bind_date, state_name) values(1005, TO_DATE('2020-01-03','YYYY-MM-DD'), 'OH');
INSERT INTO policy (policy_number, bind_date, state_name) values(1006, TO_DATE('2020-01-04','YYYY-MM-DD'), 'OH');
INSERT INTO policy (policy_number, bind_date, state_name) values(1007, TO_DATE('2020-01-04','YYYY-MM-DD'), 'OH');
INSERT INTO policy (policy_number, bind_date, state_name) values(1008, TO_DATE('2020-01-04','YYYY-MM-DD'), 'OH');
INSERT INTO policy (policy_number, bind_date, state_name) values(1009, TO_DATE('2020-01-05','YYYY-MM-DD'), 'OH');
INSERT INTO policy (policy_number, bind_date, state_name) values(1010, TO_DATE('2020-01-06','YYYY-MM-DD'), 'OH');

-- insert customers
INSERT INTO customer (age, zip, sex, education_type_name, policy_number) values(25, '43534', 'M', 'PhD', 1001);
INSERT INTO customer (age, zip, sex, education_type_name, policy_number) values(35, '41244', 'F', 'PhD', 1002);
INSERT INTO customer (age, zip, sex, education_type_name, policy_number) values(45, '43540', 'M', 'PhD', 1003);
INSERT INTO customer (age, zip, sex, education_type_name, policy_number) values(23, '46334', 'F', 'PhD', 1004);
INSERT INTO customer (age, zip, sex, education_type_name, policy_number) values(43, '53534', 'M', 'MD', 1005);
INSERT INTO customer (age, zip, sex, education_type_name, policy_number) values(33, '14534', 'F', 'JD', 1006);
INSERT INTO customer (age, zip, sex, education_type_name, policy_number) values(50, '15234', 'M', 'High School', 1007);
INSERT INTO customer (age, zip, sex, education_type_name, policy_number) values(51, '04534', 'F', 'Associate', 1008);
INSERT INTO customer (age, zip, sex, education_type_name, policy_number) values(52, '12034', 'M', 'Masters', 1009);
INSERT INTO customer (age, zip, sex, education_type_name, policy_number) values(64, '42500', 'F', 'Masters', 1010);

-- insert incidents
INSERT INTO incident (capital_gains, capital_loss, policy_number, incident_type_name, collision_type_name, incident_date) values(5000, -5000, 1001, 'Single Vehicle Collision', 'Rear Collision', TO_DATE('2020-01-10','YYYY-MM-DD'));
INSERT INTO incident (capital_gains, capital_loss, policy_number, incident_type_name, collision_type_name, incident_date) values(5000, -5000, 1002, 'Multi-vehicle Collision', 'Rear Collision', TO_DATE('2020-01-11','YYYY-MM-DD'));
INSERT INTO incident (capital_gains, capital_loss, policy_number, incident_type_name, collision_type_name, incident_date) values(5000, -5000, 1003, 'Multi-vehicle Collision', 'Front Collision', TO_DATE('2020-01-12','YYYY-MM-DD'));
INSERT INTO incident (capital_gains, capital_loss, policy_number, incident_type_name, collision_type_name, incident_date) values(5000, -5000, 1004, 'Single Vehicle Collision', 'Side Collision', TO_DATE('2020-01-12','YYYY-MM-DD'));
INSERT INTO incident (capital_gains, capital_loss, policy_number, incident_type_name, collision_type_name, incident_date) values(5000, -5000, 1005, 'Single Vehicle Collision', 'Rear Collision', TO_DATE('2020-01-13','YYYY-MM-DD'));
INSERT INTO incident (capital_gains, capital_loss, policy_number, incident_type_name, collision_type_name, incident_date) values(5000, -5000, 1006, 'Multi-vehicle Collision', 'Front Collision', TO_DATE('2020-01-13','YYYY-MM-DD'));
INSERT INTO incident (capital_gains, capital_loss, policy_number, incident_type_name, collision_type_name, incident_date) values(5000, -5000, 1007, 'Single Vehicle Collision', 'Rear Collision', TO_DATE('2020-01-13','YYYY-MM-DD'));
INSERT INTO incident (capital_gains, capital_loss, policy_number, incident_type_name, collision_type_name, incident_date) values(5000, -5000, 1008, 'Single Vehicle Collision', 'Side Collision', TO_DATE('2020-01-13','YYYY-MM-DD'));
INSERT INTO incident (capital_gains, capital_loss, policy_number, incident_type_name, collision_type_name, incident_date) values(5000, -5000, 1009, 'Parked Car', '?', TO_DATE('2020-01-14','YYYY-MM-DD'));
INSERT INTO incident (capital_gains, capital_loss, policy_number, incident_type_name, collision_type_name, incident_date) values(5000, -5000, 1010, 'Single Vehicle Collision', 'Front Collision', TO_DATE('2020-01-15','YYYY-MM-DD'));

