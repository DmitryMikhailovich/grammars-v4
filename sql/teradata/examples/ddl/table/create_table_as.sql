CREATE VOLATILE TABLE vol_sales AS (
    SELECT *
      FROM sales
)
WITH DATA
PRIMARY INDEX (id)
ON COMMIT PRESERVE ROWS;
