<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</head>
<body>
<h1>HELLO JSP FALILY</h1>
<form:form modelAttribute="employee" method="POST" action="created">
<table border="1px solid lack">
<h5>${createEmployee}</h5>
			<tr>
				<td></td>
				<td><form:input path="empId" type="text" class="form-control" /></td>
			</tr>
			
			<tr>
				<td>Name :</td>
				<td><form:input path="empName" type="text" class="form-control" /></td>
			</tr>
			
			<tr>
				<td>Email :</td>
				<td><form:input path="empEmail" type="text" class="form-control" /></td>
			</tr>
			
			<tr>
				<td>Mobile :</td>
				<td><form:input path="empMobile" type="text" class="form-control" /></td>
			</tr>
			
			<tr>
				<td>Gender :</td>
				<td><form:input path="gender" type="text" class="form-control" /></td>
			</tr>
			
			<tr>
				<td><input type="submit" value="Register"></td>
				<td><input type="reset" value="Reset"/></td>
			</tr>
</table>
</form:form>

</body>
</html>