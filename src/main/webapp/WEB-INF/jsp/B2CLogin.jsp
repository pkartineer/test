<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script src="js/jquery-3.6.0.min.js"></script>



</head>
<body>

	<div class="back">
		<div class="div-center">
			<div class="content">

				<h3>ST Login</h3>
				<hr />
				<div style="color:red">${errMsg}</div>
				<form action="/cas/validateLogin" method="POST">
					<div class="form-group" >
						Email address
						<div><h10 style="color:red"></h10> </div>
						<input type="email" class="form-control bg-gray" name=email id="email" placeholder="Enter email"
						       readonly="readonly" value="${email}">
					</div>
					<div id="divPassword" class="form-group">
						Password
						<input type="password" class="form-control" name=password id="password"
						       placeholder="Enter Password" required="required">
					</div>
					<div class="text-right">
						<button id="btnSubmit" type="submit" class="btn btn-primary form-control">Login</button>
					</div>
					<hr />
					<button type="button" class="btn btn-link">Signup</button>
					<button type="button" class="btn btn-link">Forget Password?</button>

				</form>

			</div>
		</div>
	</div>




</body>
</html>