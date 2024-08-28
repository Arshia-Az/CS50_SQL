CREATE TABLE Passengers(
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    PRIMARY KEY("id")
);


CREATE TABLE Airlines(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL CHECK("concourse" IN ("A", "B", "C", "D", "F", "T")),
    PRIMARY KEY("id")
);


CREATE TABLE Flights(
    "id" INTEGER,
    "flight_number" INTEGER NOT NULL,
    "airline_id" INTEGER,
    "code_airport_origin" TEXT,
    "code_airport_destination" TEXT,
    "time_of_landing" INTEGER,
    "date_of_landing" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("airline_id") REFERENCES "Airlines"("id")
);


CREATE TABLE Check_in(
    "id" INTEGER,
    "time_flight" INTEGER,
    "date_flight" INTEGER,
    "passenger_id" INTEGER ,
    PRIMARY KEY("id"),
    FOREIGN KEY("passenger_id") REFERENCES "Passengers"("id"),
    FOREIGN KEY("time_flight") REFERENCES "Flights"("time_of_landing"),
    FOREIGN KEY("date_flight") REFERENCES "Flights"("date_of_landing")
);
