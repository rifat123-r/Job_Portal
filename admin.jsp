<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<%@include file="Component/Css.jsp"%>
<style type="text/css">
.back-img {
	background: url("Images/admin.jpg");
	width: 100%;
	height: 95vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<c:if test="${userobj.role eq 'admin'}">
		<c:redirect url="Login.jsp"></c:redirect>
	</c:if>

	<%@include file="Component/nav.jsp"%>
	<div class="conatiner-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p-4">Welcome Admin</h1>
		</div>
	</div>
</body>
</html>