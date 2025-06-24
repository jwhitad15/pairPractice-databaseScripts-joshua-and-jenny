START TRANSACTION;

DROP TABLE IF EXISTS event_manager, bookings, sales, partners;

  CREATE TABLE partners (
	  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    corp_name VARCHAR(50) NOT NULL
    );
    
  CREATE TABLE bookings (
	  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    event_type VARCHAR(50) NOT NULL,
    event_date VARCHAR(50) NOT NULL
    );
    
  CREATE TABLE sales (
	  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ticket_count INT NOT NULL,
    ticket_sales INT NULL
    );

  CREATE TABLE event_manager (
	  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    partners_id INT NOT NULL,
    bookings_id INT NOT NULL,
    sales_id INT NOT NULL,
    
  FOREIGN KEY (partners_id) REFERENCES partners(id),
	FOREIGN KEY (bookings_id) REFERENCES bookings(id),
	FOREIGN KEY (sales_id) REFERENCES sales(id)
    );
    
  INSERT INTO partners (corp_name) VALUES 
  	('Busch Stadium'),
      ('Stifel Theater'),
      ('Fox Theater'),
      ('Hollywood Casino Amphitheater');
    
  INSERT INTO bookings (event_type, event_date) VALUES 
  	('concert', '06-24-2025'),
      ('concert', '08-18-2025'),
      ('wedding', '04-21-2026'),
      ('exhibition', '07-12-2026');
    
  INSERT INTO sales (ticket_count, ticket_sales) VALUES
  	(125, 1250),
      (3742, 143954),
      (76, null),
      (1578, 39450);
    
  INSERT INTO event_manager (title, partners_id, bookings_id, sales_id) VALUES
  	('Fleetwood Mac', 1, 1, 1),
      ('Billy Joel', 2, 2, 2),
      ('Forever Smith', 3, 3, 3),
      ('Dinosaur Exhibition', 4, 4, 4);
    
-- ROLLBACK;
COMMIT;


    
    
