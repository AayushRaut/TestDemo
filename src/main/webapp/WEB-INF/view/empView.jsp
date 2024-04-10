<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>View</title>
</head>
<body>
	<div class="container mt-3">
		<div class="mx-auto pt-3" style="width: 200px;">
			<h1>TODO</h1>
		</div>
		<div class="row mt-5">
			
			<div class="col-md-10">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">EId</th>
							<th scope="col">EName</th>
							<th scope="col">EAddress</th>
							<th scope="col">EEmail</th>
							<th scope="col">EGender</th>
							<th scope="col">EPHONE</th>
							
							<th scope="col">SDOB</th>
							
							<th scope="col">ROLE</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="emp" items="${emplist}">
							<tr>
								<td>${emp.empid}</td>
								<td>${emp.empName}</td>
								<td>${emp.empAddress}</td>
								<td>${emp.empEmail}</td>
								<td>${emp.empGender}</td>
								<td>${emp.empPhone}</td>
								<td>${emp.empdob}</td>
								<td>${emp.role}</td>
								<td><button type="button" class="btn btn-light"><a href="deleteEmp/${emp.empid}">Delete</a></button></td>
								<td><button type="button" class="btn btn-light"><a href="editemp/${emp.empid}">Update</a></button></td>
								
								<%-- <td><button type="button" class="btn btn-light"><a href="home/${todo.id}">Delete</a></button></td>
								<td><button type="button" class="btn btn-light"><a href="edit">Update</a></button></td>

 								--%>
 
 
 								<%-- 
							<td><a href="deleteemp/${todo.id}">Delete</a></td>
							
				<td><a href="editemp/${emp.id}">Edit</a></td>
				<td><a href="deleteemp/${emp.id}">Delete</a></td>
				
				--%>


							</tr>
						</c:forEach>

					</tbody>
				</table>

				
			</div>

		</div>
	</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>