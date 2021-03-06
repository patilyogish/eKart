<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>eCart :: Home</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://bootswatch.com/paper/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/";
		String db = "eKart";
		String username = "root";
		String password = "";
		int count = 0;
		String data[][] = new String[10][10];
		String image[] = new String[10];
		Class.forName(driver).newInstance();
		Connection myConn = DriverManager.getConnection(url + db, username, password);
		String query = "select * from Product where category='Electronics'";
		Statement st = myConn.createStatement();
		ResultSet rs = st.executeQuery(query);
		// Process the result set
		for (int i = 0; i < 6; i++) {
			if (rs.next()) {
				image[i] = rs.getString("image");
				data[i][0] = "Product Name: " + rs.getString("pname");
				data[i][1] = "Price: " + rs.getString("price");
				data[i][2] = "Discount: " + rs.getString("discount");
				data[i][3] = "Specs: " + rs.getString("specs");
			}
		}
	%>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">eCart</a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-2">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Electronics <span
							class="sr-only">(current)</span></a></li>
					<li><a href="men.jsp">Men</a></li>
					<li><a href="women.jsp">Women</a></li>
					<li><a href="homefur.jsp">Home and Furniture</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">More
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="cart.jsp">Go to Cart</a></li>
							<li class="divider"></li>
							<li><a href="#">About Us</a></li>
							<li class="divider"></li>
							<li><a href="logout.jsp">Logout</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END OF NAVIGATION -->
	<div class="jumbotron" style="margin: 0px 100px 0px 100px;">
		<h1>Electronics</h1>
		<img src="images/e_banner.jpg">
		<p>The next generation technology is here.</p>
	</div>

	<div class="row" style="margin: 100px 100px 100px 100px;">
		<div class="panel panel-default col-md-4">
			<div class="panel-body">
				<img src="<%=image[count]%>">
			</div>
		</div>
		<div class="panel panel-default col-md-8">
			<div class="panel-body">
				<%
					out.println(data[count][0]);
				%><br>
				<%
					out.println(data[count][1]);
				%><br>
				<%
					out.println(data[count][2]);
				%><br>
				<br>
				<br>
				<%
					out.println(data[count++][3]);
				%><br>
				<a href="cartform.jsp?pid=eke1&url=electronics.jsp" class="btn btn-primary">Add to cart</a>
			</div>

		</div>
	</div>
	<div class="row" style="margin: 100px 100px 100px 100px;">
		<div class="panel panel-default col-md-4">
			<div class="panel-body">
				<img src="<%=image[count]%>">
			</div>
		</div>
		<div class="panel panel-default col-md-8">
			<div class="panel-body">
				<%
					out.println(data[count][0]);
				%><br>
				<%
					out.println(data[count][1]);
				%><br>
				<%
					out.println(data[count][2]);
				%><br>
				<br>
				<br>
				<%
					out.println(data[count++][3]);
				%><br>
				<a href="cartform.jsp?pid=eke2&url=electronics.jsp" class="btn btn-primary">Add to cart</a>

			</div>

		</div>
	</div>
	<div class="row" style="margin: 100px 100px 100px 100px;">
		<div class="panel panel-default col-md-4">
			<div class="panel-body">
				<img src="<%=image[count]%>">
			</div>
		</div>
		<div class="panel panel-default col-md-8">
			<div class="panel-body">
				<%
					out.println(data[count][0]);
				%><br>
				<%
					out.println(data[count][1]);
				%><br>
				<%
					out.println(data[count][2]);
				%><br>
				<br>
				<br>
				<%
					out.println(data[count++][3]);
				%><br>
				<a href="cartform.jsp?pid=eke3&url=electronics.jsp" class="btn btn-primary">Add to cart</a>

			</div>

		</div>
	</div>
	<div class="row" style="margin: 100px 100px 100px 100px;">
		<div class="panel panel-default col-md-4">
			<div class="panel-body">
				<img src="<%=image[count]%>">
			</div>
		</div>
		<div class="panel panel-default col-md-8">
			<div class="panel-body">
				<%
					out.println(data[count][0]);
				%><br>
				<%
					out.println(data[count][1]);
				%><br>
				<%
					out.println(data[count][2]);
				%><br>
				<br>
				<br>
				<%
					out.println(data[count++][3]);
				%><br>
				<a href="cartform.jsp?pid=eke4&url=electronics.jsp" class="btn btn-primary">Add to cart</a>
			</div>

		</div>
	</div>
	<div class="row" style="margin: 100px 100px 100px 100px;">
		<div class="panel panel-default col-md-4">
			<div class="panel-body">
				<img src="<%=image[count]%>">
			</div>
		</div>
		<div class="panel panel-default col-md-8">
			<div class="panel-body">
				<%
					out.println(data[count][0]);
				%><br>
				<%
					out.println(data[count][1]);
				%><br>
				<%
					out.println(data[count][2]);
				%><br>
				<br>
				<br>
				<%
					out.println(data[count++][3]);
				%><br>
				<a href="cartform.jsp?pid=eke5&url=electronics.jsp" class="btn btn-primary">Add to cart</a>
			</div>

		</div>
	</div>
	<div class="row" style="margin: 100px 100px 100px 100px;">
		<div class="panel panel-default col-md-4">
			<div class="panel-body">
				<img src="<%=image[count]%>">
			</div>
		</div>
		<div class="panel panel-default col-md-8">
			<div class="panel-body">
				<%
					out.println(data[count][0]);
				%><br>
				<%
					out.println(data[count][1]);
				%><br>
				<%
					out.println(data[count][2]);
				%><br>
				<br>
				<br>
				<%
					out.println(data[count++][3]);
				%><br>
				<a href="cartform.jsp?pid=eke6&url=electronics.jsp" class="btn btn-primary">Add to cart</a>
			</div>

		</div>
	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>eCart :: Home</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://bootswatch.com/paper/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/";
		String db = "eKart";
		String username = "root";
		String password = "";
		int count = 0;
		String data[][] = new String[10][10];
		String image[] = new String[10];
		Class.forName(driver).newInstance();
		Connection myConn = DriverManager.getConnection(url + db, username, password);
		String query = "select * from Product where category='Electronics'";
		Statement st = myConn.createStatement();
		ResultSet rs = st.executeQuery(query);
		// Process the result set
		for (int i = 0; i < 6; i++) {
			if (rs.next()) {
				image[i] = rs.getString("image");
				data[i][0] = "Product Name: " + rs.getString("pname");
				data[i][1] = "Price: " + rs.getString("price");
				data[i][2] = "Discount: " + rs.getString("discount");
				data[i][3] = "Specs: " + rs.getString("specs");
			}
		}
	%>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">eCart</a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-2">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Electronics <span
							class="sr-only">(current)</span></a></li>
					<li><a href="men.jsp">Men</a></li>
					<li><a href="women.jsp">Women</a></li>
					<li><a href="homefur.jsp">Home and Furniture</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">More
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="cart.jsp">Go to Cart</a></li>
							<li class="divider"></li>
							<li><a href="#">About Us</a></li>
							<li class="divider"></li>
							<li><a href="logout.jsp">Logout</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END OF NAVIGATION -->
	<div class="jumbotron" style="margin: 0px 100px 0px 100px;">
		<h1>Electronics</h1>
		<img src="images/e_banner.jpg">
		<p>The next generation technology is here.</p>
	</div>

	<div class="row" style="margin: 100px 100px 100px 100px;">
		<div class="panel panel-default col-md-4">
			<div class="panel-body">
				<img src="<%=image[count]%>">
			</div>
		</div>
		<div class="panel panel-default col-md-8">
			<div class="panel-body">
				<%
					out.println(data[count][0]);
				%><br>
				<%
					out.println(data[count][1]);
				%><br>
				<%
					out.println(data[count][2]);
				%><br>
				<br>
				<br>
				<%
					out.println(data[count++][3]);
				%><br>
				<a href="cartform.jsp?pid=eke1&url=electronics.jsp" class="btn btn-primary">Add to cart</a>
			</div>

		</div>
	</div>
	<div class="row" style="margin: 100px 100px 100px 100px;">
		<div class="panel panel-default col-md-4">
			<div class="panel-body">
				<img src="<%=image[count]%>">
			</div>
		</div>
		<div class="panel panel-default col-md-8">
			<div class="panel-body">
				<%
					out.println(data[count][0]);
				%><br>
				<%
					out.println(data[count][1]);
				%><br>
				<%
					out.println(data[count][2]);
				%><br>
				<br>
				<br>
				<%
					out.println(data[count++][3]);
				%><br>
				<a href="cartform.jsp?pid=eke2&url=electronics.jsp" class="btn btn-primary">Add to cart</a>

			</div>

		</div>
	</div>
	<div class="row" style="margin: 100px 100px 100px 100px;">
		<div class="panel panel-default col-md-4">
			<div class="panel-body">
				<img src="<%=image[count]%>">
			</div>
		</div>
		<div class="panel panel-default col-md-8">
			<div class="panel-body">
				<%
					out.println(data[count][0]);
				%><br>
				<%
					out.println(data[count][1]);
				%><br>
				<%
					out.println(data[count][2]);
				%><br>
				<br>
				<br>
				<%
					out.println(data[count++][3]);
				%><br>
				<a href="cartform.jsp?pid=eke3&url=electronics.jsp" class="btn btn-primary">Add to cart</a>

			</div>

		</div>
	</div>
	<div class="row" style="margin: 100px 100px 100px 100px;">
		<div class="panel panel-default col-md-4">
			<div class="panel-body">
				<img src="<%=image[count]%>">
			</div>
		</div>
		<div class="panel panel-default col-md-8">
			<div class="panel-body">
				<%
					out.println(data[count][0]);
				%><br>
				<%
					out.println(data[count][1]);
				%><br>
				<%
					out.println(data[count][2]);
				%><br>
				<br>
				<br>
				<%
					out.println(data[count++][3]);
				%><br>
				<a href="cartform.jsp?pid=eke4&url=electronics.jsp" class="btn btn-primary">Add to cart</a>
			</div>

		</div>
	</div>
	<div class="row" style="margin: 100px 100px 100px 100px;">
		<div class="panel panel-default col-md-4">
			<div class="panel-body">
				<img src="<%=image[count]%>">
			</div>
		</div>
		<div class="panel panel-default col-md-8">
			<div class="panel-body">
				<%
					out.println(data[count][0]);
				%><br>
				<%
					out.println(data[count][1]);
				%><br>
				<%
					out.println(data[count][2]);
				%><br>
				<br>
				<br>
				<%
					out.println(data[count++][3]);
				%><br>
				<a href="cartform.jsp?pid=eke5&url=electronics.jsp" class="btn btn-primary">Add to cart</a>
			</div>

		</div>
	</div>
	<div class="row" style="margin: 100px 100px 100px 100px;">
		<div class="panel panel-default col-md-4">
			<div class="panel-body">
				<img src="<%=image[count]%>">
			</div>
		</div>
		<div class="panel panel-default col-md-8">
			<div class="panel-body">
				<%
					out.println(data[count][0]);
				%><br>
				<%
					out.println(data[count][1]);
				%><br>
				<%
					out.println(data[count][2]);
				%><br>
				<br>
				<br>
				<%
					out.println(data[count++][3]);
				%><br>
				<a href="cartform.jsp?pid=eke6&url=electronics.jsp" class="btn btn-primary">Add to cart</a>
			</div>

		</div>
	</div>
</body>
</html>

