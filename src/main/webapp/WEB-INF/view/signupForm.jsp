<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bootstrap Form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
body {
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	/* Added flex-direction: column to align header, form, and footer vertically */
	min-height: 100vh;
	background: linear-gradient(120deg, #f8f9fa 0%, #d1e2ff 100%);
}

.header {
	background-color: #f8f9fa;
	padding: 10px 0;
}

.footer {
	background-color: #f8f9fa;
	padding: 10px 0;
	text-align: center;
}



.container {
	width: 300px;
	background: rgba(255, 255, 255, 0.2);
	backdrop-filter: blur(10px);
	border-radius: 20px;
	padding: 20px;
	padding-top: 30px; /* Added padding-top */
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.form-group {
	margin-bottom: 20px;
}

.form-group:last-child {
	margin-bottom: 0;
}

label {
	display: block;
	margin-bottom: 6px;
	font-weight: bold;
	color: #333;
}
</style>
</head>
<body class="d-flex justify-content-center">

	
		<div class="container">
			<form action="login" method="post">
				<div class="mb-3">
					<label for="name" class="form-label">Email</label> <input
						type="email" class="form-control" id="name" name="email"
						placeholder="Enter your email">
				</div>
				<div class="mb-3">
					<label for="password" class="form-label">Password</label> <input
						type="password" class="form-control" id="password" name="password"
						placeholder="Enter your passsword">
				</div>
				<div class="mb-3">
					<label for="role" class="form-label">Role</label> <select
						class="form-control" id="role" aria-label="Select" name="role">
						<option value="#">Select</option>
						<option value="student">Student</option>
						<option value="employee">Employee</option>
					</select>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	
	
	
</body>
</html>
