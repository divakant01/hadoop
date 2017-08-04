create table mapDemo ( id int,name string,rank map<string,int>) 
row format delimited fields terminated by '\t' 
collection items terminated by ',' map keys terminated by ':'
lines terminated by '\n'
stored as textfile;
