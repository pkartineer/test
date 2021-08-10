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
				<form action="/cas/login" method="POST">
					<div class="form-group" >
						Email address
						<div><h10 style="color:red">${errMsg}</h10></div>
						<input type="email" class="form-control" name=email  id="email" placeholder="Enter email" required="required">
					</div>
					<div class="text-right">
						<button id="btnSubmit" type="submit" class="form-group btn btn-primary">Next</button>
					</div>

				</form>

			</div>
		</div>
	</div>


	<script>
	
	$(document).ready(function(){
		   
		    $('#email').blur(function(event) {
				$.fn.CheckUserByEmail();
			});
		
		    $("#btnSubmit").click(function() {
				if (!$.fn.emailValidation()) {
					return false;
				} 
			});
	});
	
	$.fn.CheckUserByEmail = function() {

		if ($.fn.emailValidation()) {
			
		}

	}
	
	$.fn.emailValidation = function() {

		var email = $('#email').val();
		var letters = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

		if (email == '' || email == null) {
			$('#email').css("border", "1px solid #e6007e");
			$('#email').css("background-color", "#fff8fc");
			$("h10").html("Email is required");
		} else if (!email.match(letters)) {

			$('#email').css("border", "1px solid #e6007e");
			$('#email').css("background-color", "#fff8fc");
			$("h10").html("The e-mail format is not correct");
		}

		else {

			$('#email').css("border", "2px solid #368036");
			$("h10").html("");
			$('#error-email').css("color", "#368036");

			return true;
		}

		return false;

	}
		
	</script>



</body>
</html>