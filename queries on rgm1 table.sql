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