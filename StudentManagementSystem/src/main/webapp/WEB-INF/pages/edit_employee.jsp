<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EDIT EMPLOYEE</h1>
<form action="/edit/${employee.empId}">
	<table>
	<tr>
			<td> </td>
			
			<td><input type="text" name="empId" value="${employee.empId}"></td>
		</tr>
		<tr>
			<td>Name : </td>
			
			<td><input type="text" name="empName" value="${employee.empName}"></td>
		</tr>
		
			<tr>
			<td>Email :</td>
			<td><input type="text" name="empEmail" value="${employee.empEmail}"></td>
		</tr>
		
			<tr>
			<td>Mobile :</td>
			<td><input type="text" name="empMobile" value="${employee.empMobile}"></td>
		</tr>
		
			<tr>
			<td>Gender :</td>
			<td><input type="text" value="${employee.gender}" name="gender"></td>
		</tr>
		
	</table>
	
	</form>
	
	
</body>
</html>