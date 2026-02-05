<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="emp.Emp" %>
    <%@ page import="emp.EmpDao" %>
    <%@ page import="java.util.List" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="Main.jsp">Add New Employee</a>
<br>
<br>
<%List<Emp>list=EmpDao.getAllEmployees(); %>
<table border=2 width=100%>
<tr>
<th>Id</th>
<th>Name</th>
<th>Password</th>
<th>Email</th>
<th>Country</th>
<th>Edit</th>
<th>Delete</th>
<%
for(Emp e:list){
%>
<tr>
<td><%= e.getId()%></td>
<td><%= e.getName()%></td>
<td><%= e.getPassword()%></td>
<td><%= e.getEmail() %></td>
<td><%= e.getCountry() %></td>
<td><a href="EditJsp.jsp?id=<%= e.getId() %>">Edit</a></td>
<td><a href="DeleteJsp.jsp?id=<%= e.getId() %>">Delete</a></td>
</tr>
<%
}
%>
</table>
</body>
</html>