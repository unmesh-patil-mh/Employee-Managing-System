<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="emp.Emp" %>
    <%@ page import="emp.EmpDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
Emp e=new Emp();
e=EmpDao.getEmployeeId(id);
%>
<form action="UpdateJsp.jsp">
<table>
<tr>
  <td></td>
  <td><input type="hidden" name="id" value="<%= id %>"></td>
</tr>
<tr>
  <td>Name :</td>
  <td><input type="text" name="name" value="<%= e.getName() %>"></td>
</tr>
<tr><td>Password :</td><td><input type="password" name="password" value="<%=e.getPassword()%>"/></td></tr>
<tr><td>Email :</td><td><input type="email" name="email" value="<%=e.getEmail() %>"/></td></tr>
<tr><td>Country :</td><td>
<select name="country" style="width:150px">
  <option value="India" <%= "India".equals(e.getCountry()) ? "selected" : "" %>>India</option>
  <option value="USA" <%= "USA".equals(e.getCountry()) ? "selected" : "" %>>USA</option>
  <option value="UK" <%= "UK".equals(e.getCountry()) ? "selected" : "" %>>UK</option>
  <option value="Other" <%= "Other".equals(e.getCountry()) ? "selected" : "" %>>Other</option>
</select>
</td></tr>
<tr><td colspan="2"><input type="submit" value="Update Employee"/></td></tr>
</table>
</form>
</body>
</html>