DROP TABLE IF EXISTS category 
DROP TABLE IF EXISTS subcategory 
DROP TABLE IF EXISTS campaign 
DROP TABLE IF EXISTS contacts

CREATE TABLE category(
	 category_id VARCHAR(20) NOT NULL,
     category_name varchar(50) NOT NULL,
	 PRIMARY KEY(category_id)
);

CREATE TABLE subcategory(
	subcategory_id varchar(20) NOT NULL,
    subcategory varchar(50) NOT NULL,
	PRIMARY KEY(subcategory_id)
);

CREATE TABLE contacts(
	contact_id int NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    email varchar(100) NOT NULL,
	PRIMARY KEY(contact_id)
);

Create TABLE campaign(
	cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar(100) NOT NULL,
    description VARCHAR(100) NOT NULL,
    goal VARCHAR(100) NOT NULL,
    pledged VARCHAR(100) NOT NULL,
    outcome varchar(50) NOT NULL,
    backers_count int NOT NULL,
    country varchar(20) NOT NULL,
    currency varchar(20) NOT NULL,
    launch_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar(20) NOT NULL,
    subcategory_id varchar(20) NOT NULL,
    PRIMARY KEY(cf_id),
	FOREIGN KEY(category_id) REFERENCES category(category_id),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY(contact_id) REFERENCES contacts(contact_id)
);


SELECT * FROM category

SELECT * FROM subcategory

SELECT * FROM campaign

SELECT * FROM contacts