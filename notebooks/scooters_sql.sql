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
SELECT *
FROM scooters
WHERE chargelevel is null
-- or latitude is null
-- or longitude is null
-- or sumdid is null
-- or sumdtype is null
-- or chargelevel is null
-- or sumdgroup is null
-- or costpermin is null
-- or companyname is null;
