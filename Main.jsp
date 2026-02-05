<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Add New Employee</h2>
<form action="SaveJsp.jsp" method="post">
<table>
<tr><td>Name: </td><td><input type="text" name="name"/></td></tr>
<tr><td>Password: </td><td><input type="password" name="password"></td></tr>
<tr><td>Email: </td><td><input type="email" name="email"></td></tr>
<tr><td>Country: </td><td>
<select name="country" style="width:160px">
<option>India</option>
<option>Australia</option>
<option>America</option>
<option>Europe</option>
<option>Other</option>
</select>
</td></tr>
<tr><td colspan="2"><input type="submit" value="save Employee"/></td></tr>
</table>
</form>
<br>
<a href="ViewJsp.jsp">View Employee</a>
</body>
</html>