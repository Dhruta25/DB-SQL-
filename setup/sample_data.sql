USE company;
INSERT INTO department(dept_name,location) VALUES
('enggineering','Rourkela'),
('HR','Bangalore'),
('sales','Mumbai');

INSERT INTO employees(name,department,salary) VALUES
('Dhruta','SDE', 100000 ),
('saloni','SDE-II',200000),
('Ritik','Analyst',75000);

INSERT INTO project(project_id,project_name,budget) VALUES
(1000345,'react_App',200000),
(834789,'flutter',100000),
(46833,'game_development',400000);