<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>Name</td>
			<td>Email</td>
			<td>Mobile</td>
			<td>Gender</td>
		</tr>
		<c:forEach items="${employees}" var="c">
		<tr>
		<td>${c.empId}</td>
		<td>${c.empName}</td>
		<td>${c.empEmail}</td>
		<td>${c.empMobile}</td>
		<td>${c.gender}</td>
		<td><a href="edit/${c.empId}">edit</a> &nbsp;&nbsp;&nbsp;&nbsp;<a href="delete/${c.empId}">delete</a></td>
		</c:forEach>
	
		</tr>
	</table>
</body>
</html>