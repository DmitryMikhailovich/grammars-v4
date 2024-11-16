-- ALTER TABLE MAP
ALTER TABLE Tab1, MAP=OneAMPMap;

ALTER TABLE Tab2, MAP=OneAMPMap COLOCATE USING MyDatabase_Tab1;

-- ALTER FOREIGN TABLE: Add Column to Table
ALTER FOREIGN TABLE ParquetTab1 ADD GageHeight FLOAT;

-- ALTER FOREIGN TABLE: Change Character Set of Payload Column to UNICODE
ALTER FOREIGN TABLE JSONTab1
ADD Payload JSON(8388096) INLINE LENGTH 32000 CHARACTER SET UNICODE;

-- ALTER FOREIGN TABLE: Drop Column from Table
ALTER FOREIGN TABLE ParquetTab1 DROP GageHeight;

-- ALTER FOREIGN TABLE: Update Map
ALTER FOREIGN TABLE ParquetTab1, MAP = TD_MAP2;

-- ALTER FOREIGN TABLE: Update Simplified Authorization
ALTER FOREIGN TABLE ParquetTab1, EXTERNAL SECURITY s3_auth1;

-- ALTER FOREIGN TABLE: Update FALLBACK Attribute and Authorization
ALTER FOREIGN TABLE JSONTab1, FALLBACK, EXTERNAL SECURITY DEFINER TRUSTED TDAWSEDBS_AUTH2;

-- ALTER FOREIGN TABLE: Alter Both Column-Level and Table-Level Attributes
ALTER FOREIGN TABLE ParquetTab1
DROP Precipitation
UPDATE LOCATION ('/s3/cloud.com/PARQUETDATA/1123') PATHPATTERN ('$Var1/$Var2/$var3');

-- ALTER TABLE TO CURRENT
ALTER TABLE sales TO CURRENT;

-- ALTER TABLE TO CURRENT WITH DELETE
ALTER TABLE customer TO CURRENT WITH DELETE;

-- ALTER TABLE TO CURRENT WITH INSERT
ALTER TABLE customer TO CURRENT WITH INSERT INTO cus_hist;
