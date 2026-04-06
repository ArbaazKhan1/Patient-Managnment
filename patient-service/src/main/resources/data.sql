CREATE TABLE IF NOT EXISTS patient
(
    id                  UUID PRIMARY KEY,
    name                VARCHAR(255)            NOT NULL,
    email               VARCHAR(255)    UNIQUE  NOT NULL,
    address             VARCHAR(255)            NOT NULL,
    date_of_birth       DATE                    NOT NULL,
    registered_date     DATE                    NOT NULL
);


INSERT INTO patient(id, name, email, address, date_of_birth, registered_date)
SELECT '492e5572-8d66-4de9-96d1-d590a5a5b3b0',
       'Arbaaz Khan',
       'basdf@example.com',
       '29 clover st, washington',
       '1994-07-11',
       '2024-4-23'
   WHERE NOT EXISTS (SELECT 1
                     FROM patient
                     WHERE id = '492e5572-8d66-4de9-96d1-d590a5a5b3b0');

INSERT INTO patient(id, name, email, address, date_of_birth, registered_date)
SELECT '492e5572-8d66-4de9-96d1-d590a5a5b301',
       'Gol D. Roger',
       'JoyBoyFan@example.com',
       '1 piece, Redline',
       '2000-06-27',
       '2004-9-23'
   WHERE NOT EXISTS (SELECT 1
                     FROM patient
                     WHERE id = '492e5572-8d66-4de9-96d1-d590a5a5b301');

INSERT INTO patient(id, name, email, address, date_of_birth, registered_date)
SELECT '492e5572-8d66-4de9-96d1-d590a5a5b302',
       'Carrie Fisher',
       'JediLover@example.com',
       '555 sand row, Pluto',
       '1804-05-20',
       '1993-09-07'
   WHERE NOT EXISTS (SELECT 1
                     FROM patient
                     WHERE id = '492e5572-8d66-4de9-96d1-d590a5a5b302');

INSERT INTO patient(id, name, email, address, date_of_birth, registered_date)
SELECT '492e5572-8d66-4de9-96d1-d590a5a5b303',
       'Jane Doe',
       'WhoAMI@example.com',
       '35 Harrington dr, oldsville',
       '1980-01-15',
       '2023-6-13'
   WHERE NOT EXISTS (SELECT 1
                     FROM patient
                     WHERE id = '492e5572-8d66-4de9-96d1-d590a5a5b303');

INSERT INTO patient(id, name, email, address, date_of_birth, registered_date)
SELECT '492e5572-8d66-4de9-96d1-d590a5a5b304',
       'John Doe',
       'LostandFound@example.com',
       '35 Harrington dr, oldsville',
       '1974-07-11',
       '2024-4-03'
   WHERE NOT EXISTS (SELECT 1
                     FROM patient
                     WHERE id = '492e5572-8d66-4de9-96d1-d590a5a5b304');



