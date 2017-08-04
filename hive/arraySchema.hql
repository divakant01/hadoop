create table array(id int,name string,rank array<int>) 
row format delimited fields terminated by '\t' 
collection items terminated by ','
lines terminated by '\n'
stored as textfile;
