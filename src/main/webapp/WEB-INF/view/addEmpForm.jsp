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

.form-container {
	display: none; /* Initially hide both form containers */
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
	<div class="row d-flex justify-content-center">
		<div class="col-2">
			<select class="form-select mt-5 md-5" id="selectType"
				aria-label="Default select example">
				<option value="emp">Select</option>
				<option value="emp">Employee</option>
				<option value="stu">Student</option>
			</select>
		</div>
	</div>


	<div class="emp-container form-container my-5" id="emp">
		<!-- Add form-container class -->
		<div class="container">
			<form action="saveEmp" method="post">
				<div class="mb-3">
					<label for="name" class="form-label">Employee Name</label> <input
						type="text" class="form-control" id="name" name="empName"
						placeholder="Enter your name">
				</div>
				<div class="mb-3">
					<label for="address" class="form-label">Employee Address</label> <input
						type="text" class="form-control" id="address" name="empAddress"
						placeholder="Enter your address">
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Employee Email</label> <input
						type="email" class="form-control" id="email" name="empEmail"
						placeholder="Enter your email">
				</div>
				<div class="mb-3">
					<label for="gender" class="form-label">Gender</label> <select
						class="form-control" id="empGender" aria-label="Select">
						<option value="#">Select</option>
						<option value="0">Male</option>
						<option value="1">Female</option>
					</select>
				</div>

				<div class="mb-3">
					<label for="phone" class="form-label">Phone</label> <input
						type="text" class="form-control" id="phone" name="empPhone"
						placeholder="Enter your Phone No">
				</div>
				<div class="mb-3">
					<label for="dob" class="form-label">DOB</label> <input type="text"
						class="form-control" id="dob" name="empdob"
						placeholder="Enter your DOB">
				</div>
				<div class="mb-3">
					<label for="password" class="form-label">password</label> <input
						type="password" class="form-control" id="password" name="password"
						placeholder="Enter your password">
				</div>

				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>

	<div class="stu-container form-container  my-5" id="stu">
		<!-- Add form-container class -->
		<div class="container">
			<form action="saveStu" method="post">
				<div class="mb-3">
					<label for="name" class="form-label">Student Name</label> <input
						type="text" class="form-control" id="name" name="sName"
						placeholder="Enter your student name">
				</div>

				<div class="mb-3">
					<label for="address" class="form-label">Employee Address</label> <input
						type="text" class="form-control" id="address" name="sAddress"
						placeholder="Enter your address">
				</div>

				<div class="mb-3">
					<label for="gender" class="form-label">Gender</label> <select
						class="form-control" id="gender" name="sGender"
						aria-label="Select">
						<option value="#">Select</option>
						<option value="0">Male</option>
						<option value="1">Female</option>
					</select>
				</div>
				<div class="mb-3">
					<label for="course" class="form-label">Course</label>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="CSE"
							id="flexCheckDefault" name="course"> <label class="form-check-label"
							for="flexCheckDefault">CSE </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="ETC"
							id="flexCheckDefault" name="course"> <label class="form-check-label"
							for="flexCheckDefault"> ETC </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="CIVIL"
							id="flexCheckDefault" name="course"> <label class="form-check-label"
							for="flexCheckDefault"> CIVIL </label>
					</div>
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Employee Email</label> <input
						type="text" class="form-control" id="email" name="email"
						placeholder="Enter your email">
				</div>
				<div class="mb-3">
					<label for="dob" class="form-label">DOB</label> <input type="text"
						class="form-control" id="dob" name="sDOB"
						placeholder="Enter your DOB">
				</div>
				<div class="mb-3">
					<label for="phone" class="form-label">Phone</label> <input
						type="text" class="form-control" id="phone" name="sphone"
						placeholder="Enter your Phone No">
				</div>
				<div class="mb-3">
					<label for="password" class="form-label"> Password</label> <input
						type="password" class="form-control" id="password" name="password"
						placeholder="Enter your password">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>

	<%@ include file="footer.jsp"%>

	<script>
		$(document).ready(function() {

			$('#selectType').change(function() {
					var selectedOption = $(this).val();
				if (selectedOption === 'emp') {
					$('.emp-container').show();
					$('.stu-container').hide();
				} else if (selectedOption === 'stu') {
					$('.emp-container').hide();
					$('.stu-container').show();
				}
			});
		});
	</script>

</body>
</html>
