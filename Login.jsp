<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="Component/Css.jsp"%>
</head>
<body>
	<%@include file="Component/nav.jsp"%>
</body>

<div class="container">
	<section id="content">
		<form action="login" method="post">
			<h1>Login Form</h1>
			<div>
				<input type="email" placeholder="Username" required="required"
					id="username" class="form-control" id="exampleInputEmail"
					aria-describedby="emailHelp" name="email">
			</div>
			<div class="form-group">
				<input type="password" placeholder="password" required="required"
					id="password" class="form-control" name="password">
			</div>
			<div>
				<input type="submit" value="Log in" />
			</div>
		</form>
		<!-- form -->

	</section>
	<!-- content -->
</div>
<!-- container -->
</html>