<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
   <head>
      <title>View All Records</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   </head>
   <style>
   		body {
	    background-image: url("https://i.ibb.co/B6DQxdX/yellow.png");
		}
</style>
   <body>
   <center>
   <br><br>
   	<h1> Marks Table </h1></center>
   	<br>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/Attendance?useSSL=false"
         user = "root" password = "Raja@1999"/>
         <sql:query dataSource = "${snapshot}" var = "result">
         select * from marks;
      </sql:query>
      <table border = "1" width = "100%" class="table">
         <tr>
            <th>Roll Number</th>
			<th>Semester</th>
			<th>course code 1</th>
			<th>m1</th>
			<th>course code 2</th>
			<th>m2</th>
			<th>course code 3</th>
			<th>m3</th>
			<th>course code 4</th>
			<th>m4</th>
			<th>course code 5</th>
			<th>m5</th>
			<th>course code 6</th>
			<th>m6</th>
			<th>cgpa</th>
         </tr>
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td> <c:out value = "${row.rollnumber}"/></td>
               <td> <c:out value = "${row.semester}"/></td>
               <td> <c:out value = "${row.cc1}"/></td>
               <td> <c:out value = "${row.m1}"/></td>
               <td> <c:out value = "${row.cc2}"/></td>
               <td> <c:out value = "${row.m2}"/></td>
               <td> <c:out value = "${row.cc3}"/></td>
               <td> <c:out value = "${row.m3}"/></td>
               <td> <c:out value = "${row.cc4}"/></td>
               <td> <c:out value = "${row.m4}"/></td>
               <td> <c:out value = "${row.cc5}"/></td>
               <td> <c:out value = "${row.m5}"/></td>
               <td> <c:out value = "${row.cc6}"/></td>
               <td> <c:out value = "${row.m6}"/></td>
               <td> <c:out value = "${row.cgpa}"/></td>
            </tr>
         </c:forEach>
      </table>
      <center>
      <br><h1>Back to: <a href="index.jsp">Admin page</a>, <a href="view_students.jsp">View Student page</a></h1></center>
   </body>
</html>