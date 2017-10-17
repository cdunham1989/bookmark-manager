# Define SQL & CRUD:

- Structured Query Language
- Language used to access and manipulate databases
- The four main commands within SQL are INSERT (Create), SELECT (Read), UPDATE & DELETE.
- CRUD represents the four basic functions of persistent storage (Create, Read, Update, Delete)

# SQL Syntax examples for each CRUD action:

## INSERT (Create):
```
CREATE TABLE "table_name"
("column_1" "data_type_for_column_1",
"column_2" "data_type_for_column_2",
... )

INSERT INTO table_name
VALUES (value_1, value_2,....)
```

## SELECT (Read):
```
SELECT column_name(s) FROM table_name

SELECT column_name(s) FROM table_name
WHERE column operator value
      AND column operator value
      OR column operator value
```

## UPDATE:
```
UPDATE table_name
SET column_name_1 = new_value_1, column_name_2 = new_value_2
WHERE column_name = some_value
```

## DELETE:
```
DROP DATABASE database_name

DROP TABLE table_name

DELETE FROM table_name
WHERE column_name = some_value
```
