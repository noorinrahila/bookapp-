<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
<style>
body {
	font: 400 15px Lato, sans-serif;
	line-height: 1.8;
	color: #818181;
}

h2 {
	font-size: 24px;
	text-transform: uppercase;
	color: #f4511e;
	font-weight: 600;
	margin-bottom: 30px;
}

table {
	border-color: #f4511e;
}

th {
	text-transform: uppercase;
	color: black;
}

a {
	color: #f4511e;
	text-align: center;
	align: center;
}
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DashBoard</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">PubHib200</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="../books/return">Home</a></li>
			<li><a href="#">order</a></li>
			
		</ul>
		<ul class="nav navbar-nav navbar-right">
      <li><a href="../users/login"><span class="glyphicon glyphicon-user"></span> Sign out</a></li>
         </ul>
	</div>
	</nav>
	<div class="container">

		<h2>List of books</h2>

		<table class="table table-striped" border="4">
			<thead>
				<tr>
					<th>Sno</th>
					<th>Name</th>
					<th>Price</th>
					<th>released_on</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${BOOK_LIST}" var="book">
					<tr>
						<td>${book.id}</td>
						<td>${book.name}</td>
						<td>${book.price}</td>
						<td>${book.released_on}</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="../book/ordered">View orders!</a>
	</div>
</body>
</html>


