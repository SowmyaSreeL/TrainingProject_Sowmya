<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
</head>
<body>

	<div class="container-fluid">
		<!-- Row 1 starts -->
		<div class="row">
			<div class="header">
				<div class="container">
					<div class="row">
						<div class="col-md-6">Contact us on +91 4066217777</div>
						<div class="col-md-6">
							<div class="col-md-3">
								<span class="glyphicon glyphicon-log-in"> SIGN IN</span>
							</div>
							<div class="col-md-3">
								<span class="glyphicon glyphicon-user"> SIGN UP</span>
							</div>
							<div class="col-md-6">
								<button class="btn" style="background-color: transparent">
									<i class="fa fa-facebook"></i>
								</button>
								<button class="btn" style="background-color: transparent">
									<i class="fa fa-google-plus"></i>
								</button>
								<button class="btn" style="background-color: transparent">
									<i class="fa fa-twitter"></i>
								</button>
								<button class="btn" style="background-color: transparent">
									<i class="glyphicon glyphicon-envelope"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</br>
		<!-- Row 1 ends -->

		<!-- Row 2 starts -->
		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<img src="images/logo.png">
					</div>

					<div class="col-md-7">
						<ul class="nav navbar-nav">
							<li><a href="#" style="color: black">ELECTRONICS <span
									class="caret"></span></a></li>
							<li><a href="#" style="color: black">MEN <span
									class="caret"></span></a></li>
							<li><a href="#" style="color: black">WOMEN <span
									class="caret"></span></a></li>
							<li><a href="#" style="color: black">BABY &amp; KIDS <span
									class="caret"></span></a></li>
							<li><a href="#" style="color: black">HOME &amp;
									FURNITURE <span class="caret"></span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<br /> <br />
		<!-- Row 2 ends -->
		<!-- Row 3 start -->
		<div class="row">
			<div class="pics">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<h2>
								<strong>EXCEPTION PAGE</strong>
							</h2>
						</div>
						<div class="col-md-4">
							<ul class="nav navbar-nav">
								<li><a href="#">HOME&nbsp;/</a></li>
								<li><a href="#" style="color: black">EXCEPTION PAGE</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Row 3 ends -->
		<!-- Row 4 start -->
		<div class="row" align="center">
			<div class="container">
				<hr />
				<div class="row">
					<h3>Sorry for the Inconvenience - The Page you are looking for
						have a Technical Error.</h3>
					<h3>
						<small>Kindly proceed to the Home page or Report this
							issue to Website Administrator with the description mentioned
							below:</small>
					</h3>
				</div>
				<div class="row">
					<a href="homepage.jsp"><button class="btn btn-info btn-design">
							<span class="glyphicon glyphicon-home"></span> Home
						</button></a>
					<form action="error" method="post">
						<button class="btn btn-info btn-design">
							<span class="fa fa-bug"></span> Report
						</button>
					</form>
				</div>
				<br />
				<div class="row alert alert-danger text-left">
					<%@ page isErrorPage="true" import="java.io.*"%>
					<%
						StringWriter error = new StringWriter();
						exception.printStackTrace(new PrintWriter(error));
						HttpSession ses=request.getSession();
						ses.setAttribute("error",error.toString());
						out.print(error.toString());
					%>
				</div>
				<hr />
			</div>
		</div>
		<!-- Row-3 End -->

		<!-- Row 4 ends -->
		<div class="row">
			<div class="footer">
				<div class="container">

					<div class="col-md-4">
						<p>
							<b>About Us</b>
						</p>
						<p>TechAspect empowers small and medium sized businesses to
							reach millions of customers with a number of programes that help
							boost their revenue and productivity. By telling stories at wide
							range of perspectives, we tell the larger story of who TechAspect
							is and how TechAspect's core business practices contribute to a
							better India.</p>
						<hr>
						<h5>
							<b>JOIN OUR MONTHLY NEWSTELLER</b>
						</h5>
						<input type="email">
						<button>
							<span class="glyphicon glyphicon-send"></span>
						</button>
					</div>
					<div class="col-md-4">
						<p>
							<b>Blogs</b>
						</p>
						<div class="row">

							<img src="images/detailsquare1.jpg" class="col-md-2 img-circle"></img>

							<p class="col-md-10">
								<b>Learn more about how techAspect is supporting small
									businesses.</b>
							</p>
						</div>
						<br>
						<div class="row">

							<img src="images/detailsquare1.jpg" class="col-md-2 img-circle"></img>

							<p class="col-md-9">
								<b>Customers's Success</b>
							</p>
						</div>
						<br>
					</div>
					<div class="col-md-4">
						<p>
							<b>Contact</b>
						</p>
						<p>TECHASPECT SOLUTIONS PVT. LTD.</p>
						<p>PLOT NO. 38, N HEIGHTS, 3RD FLOOR</p>
						<p>HITECH CITY PHASE 2, MADHAPUR</p>
						<p>HYDERABAD, TELANGANA - 500081</p>
						<p>INDIA</p>
						<button class="btn btn-info">Go to contact page</button>
						<br /> <br /> <br />
					</div>
				</div>
			</div>
		</div>
		<!-- 6th row end -->
		<!-- 7th row start -->
		<div class="row">
			<div class="last">
				<div class="container-fluid">
					<div class="container">
						<p>
							<span class="glyphicon glyphicon-copyright-mark"></span> 2018.
							TechAspect Solutions Private Limited.
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- 7th row end -->

	</div>
</body>
</html>