set hive.enforce.bucketing = true;

drop table if exists bucketDemo;
create table bucketDemo(id int, name string, date string) clustered by (id) into 5 buckets row format delimited stored as textfile;

drop table if exists tmp;
create table tmp(id int, name string, date string) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile;
load data local inpath '/home/cloudera/hadoop-demo/partitionData' into table tmp;

FROM tmp
INSERT OVERWRITE TABLE bucketdemo
SELECT id, name, date ;
