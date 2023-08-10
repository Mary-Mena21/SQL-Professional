
--SELECT 
--    -- columns selecting
--FROM -- table name
--JOIN -- all table Joins
--WHERE 
--GROUP BY
--HAVING 
--ORDER BY



/* Demo of Joins */
SELECT 
     po.OwnerID,
     po.OwnerName,
     c.catname,
     vcc.VetClinicCustomerId
--     ,vc.ClinicName
     ,d.dogname
FROM PetOwners po
-- INNER JOIN Cats c ON c.OwnerId = po.OwnerId -- 4 rows, No owenerId = 2
 LEFT JOIN Cats c ON c.OwnerId = po.OwnerId  -- 5 rows; OwnerId = 2 
 LEFT JOIN VetClinicCustomers vcc ON vcc.CustomerId = po.OwnerId
-- RIGHT JOIN VetClinics vc ON vc.VetClinicId = vcc.VetClinicId
 FULL OUTER JOIN Dogs d ON d.OwnerID = po.OwnerId
-- 
-- select * from VetClinics
-- select * from cats


/*WHERE CLause */
SELECT CONCAT(d.dogname, d.color) as DogInfo,
d.dogId as DogNumber
FROM Dogs d
-- WHERE dogname = 'Lady'
 WHERE dogname LIKE '%o%'
-- WHERE d.dogname LIKE '%L%' AND color = 'Brown'
ORDER BY d.dogid DESC
LIMIT 1


/* Example */
--SELECT -- list columns to select
--FROM  -- Name of table to SELECT 
     po.OwnerID,
     po.OwnerName,
     c.catname,
     vcc.VetClinicCustomerId
--     ,vc.ClinicName
     ,d.dogname
FROM PetOwners po
-- INNER JOIN Cats c ON c.OwnerId = po.OwnerId -- 4 rows, No owenerId = 2
 LEFT JOIN Cats c ON c.OwnerId = po.OwnerId  -- 5 rows; OwnerId = 2 
 LEFT JOIN VetClinicCustomers vcc ON vcc.CustomerId = po.OwnerId
-- RIGHT JOIN VetClinics vc ON vc.VetClinicId = vcc.VetClinicId
 FULL OUTER JOIN Dogs d ON d.OwnerID = po.OwnerId