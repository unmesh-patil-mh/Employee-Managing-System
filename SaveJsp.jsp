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
String name=request.getParameter("name");
String password=request.getParameter("password");
String email=request.getParameter("email");
String country=request.getParameter("country");
Emp e=new Emp();
e.setName(name);
e.setPassword(password);
e.setEmail(email);
e.setCountry(country);
int status=EmpDao.save(e);
if(status>0){
	out.print("Data Saved Successfully....");
%>
<jsp:include page="Main.jsp"></jsp:include>
<% 
}else{
	out.print("Data Not Saved Successfully....");
%>
<jsp:include page="Main.jsp"></jsp:include>
<% 
}
%>
</body>
</html>