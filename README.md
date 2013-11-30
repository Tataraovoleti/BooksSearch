BooksSearch
===========

This is small MVC based application to get Details about books


Prerequisites
-------------------------------------
java 1.5 or later
Tomcat 5.5 or later
oracle Database or Mysql database
-------------------------------------
create DSN called 'contact' 

Control Panel --> Administrative Tools -- > click ODBC Datasources
         --> Sytem DSN/User DSN -> Add -> Select Microsoft odbc for Oracle -> Finish 
         Enter Datasource name as : contact, username and password according to ur schema (in application scott/tiger)
-----------------------------------------------------------------------------------------
Create table in Oracle db software

create table select_books
(bookid varchar2(20), 
bookname varchar2(20),
authorname varchar2(20),
status varchar2(20),category varchar2(20));

// insert some rows
-------------------------------------------------------------
Compile java classes
In our application both BookBean.java and DbConnector.java kept in package called 'beans'

Order of compilation
Navigate to classes folder of application, ex
d:\>ProjectApp\ProjectApp\WEB-INF\classes>javac -d . BookBean.java
d:\>ProjectApp\ProjectApp\WEB-INF\classes>javac -d . DbConnector.java
d:\>ProjectApp\ProjectApp\WEB-INF\classes>javac SelectedBooks.java

Deploy it and run
