-- Create Artikel table
CREATE TABLE Artikel (
    Artikel_id INT NOT NULL PRIMARY KEY,
    Artikelname VARCHAR(50) NOT NULL,
    preis MONEY NOT NULL,
    Herstelldatum DATE NOT NULL,
    verfallsdatum DATE NOT NULL,
    Lagerort VARCHAR(50),
    Anzahl INT NOT NULL
);

-- Insert sample data into Artikel table
INSERT INTO Artikel (Artikel_id, Artikelname, preis, Herstelldatum, verfallsdatum, Lagerort, Anzahl)
VALUES
    (1, 'Artikel 1', 10.99, '2023-01-01', '2023-01-31', 'Lager 1', 50),
    (2, 'Artikel 2', 15.99, '2023-02-01', '2023-02-28', 'Lager 2', 100),
    (3, 'Artikel 3', 5.99, '2023-03-01', '2023-03-31', 'Lager 1', 25);

-- Create Kunde table
CREATE TABLE Kunde (
    Kunde_id INT NOT NULL PRIMARY KEY,
    Vorname VARCHAR(50) NOT NULL,
    Nachname VARCHAR(50) NOT NULL,
    Ort VARCHAR(50) NOT NULL,
    Plz INT NOT NULL,
    Email VARCHAR(100),
    Telefon VARCHAR(20)
);

-- Insert sample data into Kunde table
INSERT INTO Kunde (Kunde_id, Vorname, Nachname, Ort, Plz, Email, Telefon)
VALUES
    (1, 'Max', 'Mustermann', 'Ort 1', 12345, 'max.mustermann@example.com', '+49 123456789'),
    (2, 'Erika', 'Musterfrau', 'Ort 2', 23456, 'erika.musterfrau@example.com', '+49 987654321'),
    (3, 'Hans', 'Schmidt', 'Ort 3', 34567, 'hans.schmidt@example.com', '+49 456789123');

-- Create arbeitsauftrag table
CREATE TABLE arbeitsauftrag (
    Auftrag_id INT NOT NULL PRIMARY KEY,
    Artikel_id INT NOT NULL,
    Kunde_id INT NOT NULL,
    Lieferung VARCHAR(50) NOT NULL,
    Lieferungsdauer INT NOT NULL,
    Anmerkungen VARCHAR(5000),
    Auftragsdatum DATE NOT NULL,
    Status VARCHAR(20),
    FOREIGN KEY (Artikel_id) REFERENCES Artikel(Artikel_id),
    FOREIGN KEY (Kunde_id) REFERENCES Kunde(Kunde_id)
);

-- Insert sample data into arbeitsauftrag table
INSERT INTO arbeitsauftrag (Auftrag_id, Artikel_id, Kunde_id, Lieferung, Lieferungsdauer, Anmerkungen, Auftragsdatum, Status)
VALUES
    (1, 1, 1, 'Lieferung 1', 3, 'Anmerkung 1', '2023-06-01', 'In Bearbeitung'),
    (2, 2, 2, 'Lieferung 2', 5, 'Anmerkung 2', '2023-06-02', 'Abgeschlossen'),
    (3, 3, 3, 'Lieferung 3', 2, 'Anmerkung 3', '2023-06-03', 'In Bearbeitung');

	Select *from ARBEITSAUFTRAG
	Select*from Kunde
	Select *from Artikel
	Select auftrag_id from ARBEITSAUFTRAG 
	Update Kunde set vorname ='alex'   where vorname ='max'