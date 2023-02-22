CREATE TABLE Hunter (
	id INT NOT NULL PRIMARY KEY
	hunter_name VARCHAR(100)
	ability_type VARCHAR(20)
	ability_name VARCHAR(100)
	quote VARCHAR(200)
	version INT
	created_at DATETIME
	updated_at DATETIME
);

CREATE TABLE AbilityType (
	id INT NOT NULL PRIMARY KEY,
	ability_name VARCHAR(100)
);