CREATE TABLE Ingredients(
    "flour" INTEGER NOT NULL,
    "yeast" INTEGER NOT NULL,
    "oil" INTEGER NOT NULL,
    "butter" INTEGER NOT NULL
);

CREATE TABLE Donuts(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "gluten_free" INTEGER CHECK("gluten_free" BETWEEN 0 AND 1),
    "price" INTEGER NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE Customers(
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "history_of_order_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("history_of_order_id") REFERENCES "Orders"("id")
);

CREATE TABLE Orders(
    "id" INTEGER,
    "number_od_order" INTEGER NOT NULL,
    "customer_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("customer_id") REFERENCES "Customers"("id")
);
