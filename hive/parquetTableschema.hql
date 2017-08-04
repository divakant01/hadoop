drop table if exists kst_parquet;
CREATE TABLE kst_parquet (username string,tweet string,timestamp bigint) stored as parquet;
