-- Find all the rows where rsession is equal to java
select * from RGM1 where RSESSION = "JAVA";
select ID, NAME_,RSESSION from RGM1 where RSESSION = "JAVA";
select * from rgm1 where RSESSION = "JAVA" and college = "RGMCET";
select NAME_ from rgm1 where RSESSION = "JAVA" and college = "RGMCET";
select * from rgm1;
select * from rgm1 where ADDRESS = "kurnool";
select * from rgm1 where NAME_ like "S%";-- % means ,whatever may be 
select * from rgm1 where NAME_ like "SA%";
select * from rgm1 where ADDRESS like "%L";
select * from rgm1 where ADDRESS like "%oo%";
select * from rgm1 where NAME_ like "_M%";-- _ means it might be any single character in the underscore position 
select * from rgm1 where NAME_ not like "s%";-- will not show the names which are not starting with s (we use not like)
select * from rgm1 where NAME_ not like "_M%";
