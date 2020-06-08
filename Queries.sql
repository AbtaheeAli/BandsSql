CREATE TABLE "Albums" ("Id" SERIAL PRIMARY KEY, "Title" TEXT, "IsExplicit" BOOLEAN, "ReleaseDate" DATE);

CREATE TABLE "Bands" ("Id" SERIAL PRIMARY KEY, "Name" TEXT, "CountryOfOrigin" TEXT, "NumberOfMembers" INT, "Website" TEXT, "Style" TEXT, "IsSigned" BOOLEAN, "ContactName" TEXT, "ContactPhoneNumber" TEXT);

ALTER TABLE "Albums" ADD COLUMN "BandId" INTEGER NULL REFERENCES "Bands" ("Id");

INSERT INTO "Bands" ("Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Style", "IsSigned", "ContactName", "ContactPhoneNumber") VALUES ('Migos', 'USA', '3', 'Migos.com', 'Hip-Hop', 'True', 'Tahee', '727-299-9999');

SELECT * FROM "Bands";

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate", "BandId") VALUES ('Culture II', 'True', '2016-02-01', '1');

UPDATE "Bands" SET "IsSigned" = false where "Name" = 'Migos';

UPDATE "Bands" SET "IsSigned" = true where "Name" = 'Migos';

SELECT "Albums"."Title", "Bands"."Name"
FROM "Albums"
JOIN "Bands" ON "Albums"."BandId" = "Bands"."Id";
-- Could also be 
--SELECT "Albums"."Title", "Bands"."Name"
--FROM "Albums"
--JOIN "Bands" ON "Albums"."BandId" = "Bands"."Id";

SELECT * FROM "Albums" ORDER BY "Albums"."ReleaseDate"; 

SELECT * FROM "Bands" WHERE "IsSigned" = 'true';

SELECT * FROM "Bands" WHERE "IsSigned" = 'false';

INSERT INTO "Bands" ("Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Style", "IsSigned", "ContactName", "ContactPhoneNumber") VALUES ('Linkin Park', 'USA', '8', 'LinkinPark.com', 'Rock', 'False', 'Riri', '727-300-0002');




