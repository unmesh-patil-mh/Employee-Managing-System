<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="emp.Emp" %>
<%@ page import="emp.EmpDao" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>
</head>
<body>

<%
int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String password = request.getParameter("password");
String email = request.getParameter("email");
String country = request.getParameter("country");

Emp e = new Emp();
e.setId(id);
e.setName(name);
e.setPassword(password);
e.setEmail(email);
e.setCountry(country);

int status = EmpDao.update(e);

if (status > 0) {
    response.sendRedirect("ViewJsp.jsp");
} else {
%>
    <p>❌ Data cannot be updated...</p>
    <jsp:include page="EditJsp.jsp" />
<%
}
%>

</body>
</html>
