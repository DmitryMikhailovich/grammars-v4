-- Setting the Protection Mode of a UDF to EXECUTE NOT PROTECTED
ALTER FUNCTION TransXML (CLOB) EXECUTE NOT PROTECTED;

-- Compile specific UDF
ALTER SPECIFIC FUNCTION XPathValue COMPILE;