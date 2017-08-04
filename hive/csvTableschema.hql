drop table if exists titanic;
create table titanic(PassengerId string,Survived int,Pclass  string,Name  string,Sex  string,Age int,SibSp  string,Parch string,Ticket  string,Fare  string,Cabin  string,Embarked string)
row format delimited
stored as textfile;
