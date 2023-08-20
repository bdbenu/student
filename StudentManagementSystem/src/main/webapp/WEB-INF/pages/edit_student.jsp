<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<form:form modelAttribute="employee" method="get" action="edit">
<tr><td colspan="2"><form:hidden path="empId"/></td></tr>
<tr><td>Name</td><td><form:input path="empName"/></td></tr>

</form:form>
</table>

</body>
</html>