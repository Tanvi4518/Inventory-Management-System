<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" >
<!DOCTYPE html>
<html>
<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous">
	
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"></script>
<meta charset="ISO-8859-1">
<title>cart</title>
<style type="text/css">
.table tbody td{
 vartical-align:middle;
}
.btn-incre,.btn-decre{
box-shadow: none;
font-size=25px
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="UserDashboard.jsp">Online Grocery
				Shoping Cart</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item mr-auto"><a class="nav-link active"
						aria-current="page" href="UserDashboard.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="cart.jsp">Cart</a></li>
					<li class="nav-item"><a class="nav-link" href="order.jsp">Order</a></li>
					<li class="nav-item"><a class="nav-link" href="UserLogin.jsp">Login</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="d-flex py-3">
			<h2>Total Price : Rs.100</h2>
			<a class="mx-3 btn btn-primary" href="#">Check Out</a>
		</div>
		<table class="table table-Loght">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Price</th>
					<th scope="col">Buy Now</th>
					<th scope="col">Cancel</th>
				</tr>
			</thead>
			<tbody>
			<tr>
			<td>Strawberry</td>
			<td>Fruit</td>
			<td>Rs.100</td>
			<td>
			<form action="" method="post" class="form-inline">
			<input type=="hidden" name="id" value="1" class="form-input">
			<div class="form group d-flex justify-content-between">
			<a class="btn btn-sm btn-decre" href=""><i class="fas fa-minus-square"></i></a>
			<a class="btn btn-sm btn-incre" href=""><i class="fas fa-plus-square"></i></a>
			</div>
			</form>
			</td>
			<td><a class="btn btn-sm btn-danger" href="">Remove</a></td>
			</tr>
			</tbody>
		</table>
	</div>
</body>
</html>