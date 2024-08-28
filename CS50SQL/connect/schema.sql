CREATE TABLE Users(
    "id" INTEGER,
    "first_name" TEXT NOT NUll,
    "last_name" TEXT NOT NUll,
    "user_name" TEXT NOT NULL UNIQUE,
    "password" TEXT,
    PRIMARY KEY("id")
);


CREATE TABLE SchoolsORUniversities(
    "id" INTEGER,
    "name" TEXT NOT NULL ,
    "type_of_school" TEXT NOT NULL,
    "location" TEXT NOT NULL UNIQUE,
    "year" INTEGER NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE Companies(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "locations" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE Members(
    "connector" INTEGER,
    "connected" INTEGER,
    FOREIGN KEY("connector") REFERENCES "Users"("id")
    FOREIGN KEY("connected") REFERENCES "Users"("id")
);


CREATE TABLE Education(
    "schooloruni_id" INTEGER,
    "start" INTEGER NOT NULL,
    "end" INTEGER ,
    "degree" TEXT NOT NULL,
    FOREIGN KEY("schooloruni_id") REFERENCES "SchoolsORUniversities"("id")
);


CREATE TABLE WorkExperience(
    "compony_id" INTEGER,
    "start" INTEGER NOT NULL,
    "end" INTEGER ,
    "title_of_work" TEXT NOT NULL,
    FOREIGN KEY("compony_id") REFERENCES "Companies"("id")
);


