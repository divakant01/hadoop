create table structDemo ( id int,name string,rank struct<type:string,code:int>) 
row format delimited fields terminated by '\t' 
collection items terminated by ','
lines terminated by '\n'
stored as textfile;
