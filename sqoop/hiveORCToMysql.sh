sqoop export --connect jdbc:mysql://localhost:3306/sqoop_demo --driver com.mysql.jdbc.Driver --username root --password cloudera --table orc --hcatalog-table kst_orc
