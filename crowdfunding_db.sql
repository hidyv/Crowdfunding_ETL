CREATE TABLE category (
    category_id VARCHAR(5) NOT NULL PRIMARY KEY,
    category VARCHAR(20) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) NOT NULL PRIMARY KEY,
    subcategory VARCHAR(20) NOT NULL
);

CREATE TABLE contacts (
    contact_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50)
);

CREATE TABLE campaign (
    cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NULL,
    company_name VARCHAR(75) NOT NULL,
    description VARCHAR(100) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(15) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(5) NOT NULL,
    currency VARCHAR(5) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
	category_id VARCHAR(5) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM category

SELECT * FROM subcategory

SELECT * FROM contacts

SELECT * FROM campaign
