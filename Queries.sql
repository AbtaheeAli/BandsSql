CREATE TABLE "Albums" ("Id" SERIAL PRIMARY KEY, "Title" TEXT, "IsExplicit" TEXT, "ReleaseDate" TIMESTAMP);

CREATE TABLE "Band" ("Id" SERIAL PRIMARY KEY, "Name" TEXT, "CountryOfOrigin" TEXT, "NumberOfMembers" INT, "Website" TEXT, "Style" TEXT, "IsSigned" TEXT, "ContactName" TEXT, "ContactPhoneNumber" TEXT);

ALTER TABLE "Albums" ADD COLUMN "BandId" INTEGER NULL REFERENCES "Bands" ("Id");