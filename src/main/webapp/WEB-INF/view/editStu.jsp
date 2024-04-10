<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
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
	


	
	<div class="stu-container form-container  my-5">
		<!-- Add form-container class -->
		<div class="container">
			<form action="/TestDemo/updatestu" method="post">
				<div class="mb-3">
					<label for="sid" class="form-label">Student id</label> <input
						type="text" class="form-control" id="sid" name="sid"
						placeholder="Enter your student name" value="${stu.sid }">
				</div>
				
				<div class="mb-3">
					<label for="name" class="form-label">Student Name</label> <input
						type="text" class="form-control" id="name" name="sName"
						placeholder="Enter your student name" value="${stu.sName }">
				</div>

				<div class="mb-3">
					<label for="address" class="form-label">Student Address</label> <input
						type="text" class="form-control" id="address" name="sAddress"
						placeholder="Enter your address" value="${stu.sAddress }">
				</div>
				
				

				<div class="mb-3">
					<label for="gender" class="form-label">Gender</label> <select
						class="form-control" id="gender" name="sGender"
						aria-label="Select">
						<option value="#">Select</option>
						<option <c:if test="${stu.sGender eq '0' }">Selected</c:if> value="0">Male</option>
						<option <c:if test="${stu.sGender eq '1' }">Selected</c:if> value="1">Female</option>
					</select>
				</div>
				
				<c:set var="cu" value="${stu.course}"/>
				
				${fn:replace(cu,","," ")}
				
				<c:set var="c" value="${cu }"/>
				
				<div class="mb-3">
					<label for="course" class="form-label">Course</label>
					<div class="form-check">
						<input class="form-check-input" <c:if test="${fn:contains(c, 'CSE')}">Checked</c:if>  type="checkbox" value="CSE"
							id="flexCheckDefault" name="course"> <label class="form-check-label"
							for="flexCheckDefault">CSE </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" <c:if test="${fn:contains(c, 'ETC')}">Checked</c:if> type="checkbox" value="ETC"
							id="flexCheckDefault" name="course"> <label class="form-check-label"
							for="flexCheckDefault"> ETC </label>
					</div>
					<div class="form-check">
						<input class="form-check-input"  <c:if test="${fn:contains(c, 'CIVIL')}">Checked</c:if> type="checkbox" value="CIVIL"
							id="flexCheckDefault" name="course"> <label class="form-check-label"
							for="flexCheckDefault"> CIVIL </label>
					</div>
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Employee Email</label> <input
						type="text" class="form-control" id="email" name="email"
						placeholder="Enter your email" value="${stu.email }">
				</div>
				<div class="mb-3">
					<label for="dob" class="form-label">DOB</label> <input type="text"
						class="form-control" id="dob" name="sDOB"
						placeholder="Enter your DOB" value="${stu.sDOB }">
				</div>
				<div class="mb-3">
					<label for="phone" class="form-label">Phone</label> <input
						type="text" class="form-control" id="phone" name="sphone"
						placeholder="Enter your Phone No" value="${stu.sphone }">
				</div>
				
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>

	<%@ include file="footer.jsp"%>

	

</body>
</html>
