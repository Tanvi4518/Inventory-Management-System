<%@page import="linkcode.shop.user.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="linkcode.shop.db.ShopDb"%>
<%@page import="linkcode.shop.user.daoImpl.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>	
<%
	  ProductDao pd=new ProductDao(ShopDb.getConnection());
	  List<Product> plst=pd.getAllProduct();
%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Userdashboard</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous">
</script>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="UserDashboard.jsp">Online Grocery Shoping Cart</a>
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
		<div class="card-header my-3">All Products</div>
		<div class="row">
		<%
		   if(!plst.isEmpty()){
			   for(Product p:plst){%>
				   <div class="col-md-3">
					<div class="card" style="width: 18rem;">
						<img class="card-img-top" src="http://doctormurray.com/wp-content/uploads/2014/07/Strawberries.jpg" <%=p.getImage() %>alt="...">
						<div class="card-body">
							<h5 class="card-title"><%=p.getName() %></h5>
							<h6 class="price">Price : RS<%=p.getPrice() %></h6>
							<h6 class="category">Category:<%=p.getCategory() %></h6>
							<div  class="mt-3 d-flex justify-content-between"></div>
							<a href="#" class="btn btn-dark">Add to Cart</a>
							<a href="#" class="btn btn-primary">Buy Now</a>
						</div>
					</div>
				</div>	  
			  <%  }
		   }
		%>		
	</div>
	</div>
</body>
</html>