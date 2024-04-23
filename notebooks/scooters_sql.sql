-- how many companies?
SELECT distinct(companyname)
FROM scooters
-- 7: "Bird"
-- "Bolt"
-- "Gotcha"
-- "Jump"
-- "Lime"
-- "Lyft"
-- "Spin"

SELECT distinct(companyname)
FROM trips;
--same companies, different spelling/capitalization:
-- "Bird"
-- "Bolt Mobility"
-- "Gotcha"
-- "JUMP"
-- "Lime"
-- "Lyft"
-- "SPIN"

-- how many rows? 73 mil in scooters, 565k in trips
SELECT COUNT(triprecordnum)
from trips;

--finding null values: 
SELECT chargelevel, companyname
FROM scooters
WHERE chargelevel is null
GROUP BY companyname, chargelevel;

SELECT MIN(pubdatetime), MAX(pubdatetime)
FROM scooters;

SELECT DISTINCT(sumdgroup)
FROM scooters

SELECT COUNT(sumdgroup)
FROM scooters
WHERE sumdgroup = 'bicycle';
--26529 bicycle locations represented in table

SELECT COUNT(sumdgroup)
FROM scooters
WHERE sumdgroup = 'scooter';
--59,671,463 scooters

SELECT COUNT(sumdgroup)
FROM scooters
WHERE sumdgroup = 'Scooter';
--13,716,051 Scooters

SELECT MIN(latitude) AS min_lat, MAX(latitude) as max_lat, MIN(longitude) as min_long, MAX(longitude) as max_long
FROM scooters
LIMIT 10; 

SELECT companyname
FROM scooters
WHERE latitude = 0.000000
OR longitude = 0.000000
GROUP BY  companyname
--all 0 values for lat and long are from Gotcha scooters

--Question 1 (Nyssa)
SELECT companyname, count(DISTINCT(sumdid))
FROM scooters
GROUP BY companyname

--how many bicycles?
SELECT DISTINCT sumdid, companyname, sumdgroup 
FROM scooters 
WHERE sumdgroup = 'bicycle'
--answer: 6
-- "Standard2UGJKREVB53HT"
-- "Standard5JXOV277MCWID"
-- "StandardNPOOZNUSGAXZN"
-- "StandardNUTLLXP4G37OI"
-- "StandardNW5HJFO4R32LY"
-- "StandardZPUQESHVPP74J"

--remove bicycles from trips table
SELECT *
FROM trips
WHERE sumdid NOT IN ('Standard2UGJKREVB53HT', 'Standard5JXOV277MCWID', 'StandardNPOOZNUSGAXZN', 'StandardNUTLLXP4G37OI', 'StandardNW5HJFO4R32LY', 'StandardNW5HJFO4R32LY', 'StandardZPUQESHVPP74J' )
--565522 rows



