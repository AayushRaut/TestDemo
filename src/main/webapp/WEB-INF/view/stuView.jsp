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
							<th scope="col">SId</th>
							<th scope="col">SName</th>
							<th scope="col">SAddress</th>
							<th scope="col">SGender</th>
							<th scope="col">SCourse</th>
							<th scope="col">SEmail</th>
							<th scope="col">SDOB</th>
							<th scope="col">SPHONE</th>
							<th scope="col">ROLE</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="stu" items="${stulist}">
							<tr>
								<td>${stu.sid}</td>
								<td>${stu.sName}</td>
								<td>${stu.sAddress}</td>
								<td>${stu.sGender}</td>
								<td>${stu.course}</td>
								<td>${stu.email}</td>
								<td>${stu.sDOB}</td>
								<td>${stu.sphone}</td>
								<td>${stu.role}</td>
								<td><button type="button" class="btn btn-light"><a href="deleteStu/${stu.sid}">Delete</a></button></td>
								<td><button type="button" class="btn btn-light"><a href="editstu/${stu.sid}">Update</a></button></td>
								
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