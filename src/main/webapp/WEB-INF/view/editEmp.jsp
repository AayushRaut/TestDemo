<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f" %> 
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
<body>
	<%@ include file="navbar.jsp"%>
	


	<div class="emp-container form-container my-5">
		<!-- Add form-container class -->
		<div class="container">
			<form action="/TestDemo/updateemp" method="post">
			
				<div class="mb-3">
					<label for="empid" class="form-label">Employee id</label> <input
						type="text" class="form-control" id="empid" name="empid"
						placeholder="Enter your empid" value="${emp.empid }">
				</div>
				<div class="mb-3">
					<label for="name" class="form-label">Employee Name</label> <input
						type="text" class="form-control" id="name" name="empName"
						placeholder="Enter your name" value="${emp.empName }">
				</div>
				<div class="mb-3">
					<label for="address" class="form-label">Employee Address</label> <input
						type="text" class="form-control" id="address" name="empAddress"
						placeholder="Enter your address" value="${emp.empAddress }">
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Employee Email</label> <input
						type="email" class="form-control" id="email" name="empEmail"
						placeholder="Enter your email" value="${emp.empEmail }">
				</div>
				<div class="mb-3">
					<label for="gender" class="form-label">Gender</label> <select
						class="form-control" id="empGender" aria-label="Select">
						<option value="#">Select</option>
						<option  <c:if test="${emp.empGender eq '0' }">Selected</c:if> value="0">Male</option>
						<option <c:if test="${emp.empGender eq '1' }">Selected</c:if> value="1">Female</option>
					</select>
				</div>

				<div class="mb-3">
					<label for="phone" class="form-label">Phone</label> <input
						type="text" class="form-control" id="phone" name="empPhone"
						placeholder="Enter your Phone No" value="${emp.empPhone }">
				</div>
				<div class="mb-3">
					<label for="dob" class="form-label">DOB</label> <input type="text"
						class="form-control" id="dob" name="empdob"
						placeholder="Enter your DOB" value="${emp.empdob }">
				</div>
				

				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>

	
	<%@ include file="footer.jsp"%>

	

</body>
</html>
