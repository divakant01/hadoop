SET hive.exec.dynamic.partition = true;
SET hive.exec.dynamic.partition.mode = nonstrict;
SET hive.exec.max.dynamic.partitions.pernode = 400;
set hive.enforce.bucketing = true;

drop table if exists pBucketDemo;
create table pBucketDemo(id int, name string, datetmp string) partitioned by (date string) clustered by(id) into 5 buckets row format delimited stored as textfile;
drop table if exists tmp;
create table tmp(id int, name string, date string) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile;
load data local inpath '/home/cloudera/hadoop-demo/partitionData' into table tmp;
insert into pBucketDemo partition(date) select id,name,date,month(from_unixtime(unix_timestamp(date,'d-MM-yyyy'))) from tmp;

select * from pBucketDemo tablesample(bucket 2 out of 5 on rand()) s;


