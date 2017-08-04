drop table if exists kst_orc;
CREATE TABLE kst_orc (username string,tweet string,timestamp bigint) stored as orc;
