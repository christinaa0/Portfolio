

CREATE TABLE Utilisateur(
   ID_utilisateur VARCHAR(255),
   Nom VARCHAR(255) NOT NULL,
   Prenom VARCHAR(255) NOT NULL,
   Pseudo VARCHAR(255) NOT NULL,
   Genre VARCHAR(255) NOT NULL,
   Email VARCHAR(255) NOT NULL,
   Téléphone VARCHAR(255) NOT NULL,
   Photo BLOB,
   Centre_interet VARCHAR(255),
   Bio VARCHAR(255)
);

CREATE TABLE Discussion(
   ID_discussion VARCHAR(255),
   Contenu_message VARCHAR(255),
   ID_destination VARCHAR(255) NOT NULL,
   PRIMARY KEY(ID_discussion),
   UNIQUE(ID_destination),
   FOREIGN KEY(ID_destination) REFERENCES Destination(ID_destination)
);

CREATE TABLE Matchs(
   ID_match VARCHAR(255),
   ID_discussion VARCHAR(255) NOT NULL,
   PRIMARY KEY(ID_match),
   UNIQUE(ID_discussion),
   FOREIGN KEY(ID_discussion) REFERENCES Discussion(ID_discussion)
);

CREATE TABLE Matcher(
   ID_utilisateur VARCHAR(255),
   ID_match VARCHAR(255),
   PRIMARY KEY(ID_utilisateur, ID_match),
   FOREIGN KEY(ID_utilisateur) REFERENCES Utilisateur(ID_utilisateur),
   FOREIGN KEY(ID_match) REFERENCES Matchs(ID_match)
);
