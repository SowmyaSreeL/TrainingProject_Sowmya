<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="fontawesome-free-5.5.0-web/css/all.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">


</head>
<body>
		<%@ include file="header.jsp" %>
		<br />
		<!-- Row 1 ends -->

		<!-- Row 2 starts -->
		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<br /> <img src="images/logo.jpg">
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
		<br/>

		<div class="row">
			<div class="pics">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<h2>
								<b>NEW ACCOUNT /SIGN IN</b>
							</h2>

						</div>
						<div class="col-md-4 a">
							<p>
								<a href="homepage.jsp">HOME</a>/<a href="signIn.jsp" style="color: black">NEW
									ACCOUNT</a>/<a href="signIn.jsp" style="color: black">SIGN IN</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Row 4 starts -->
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-4">
				<hr>
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<hr>
			</div>
			<div class="col-md-1"></div>
		</div>


		<div class="row">
			<div class="col-md-1"></div>

			<div class="col-md-4">
				<b><h3>NEW ACCOUNT</h3></b></br> Not our registered customer yet?</br> </br> With
				Registration with us new world of fashion, fantastic discounts and
				much more opens to you!The whole process will not take more than a
				minute.<br/> If you have any questions please feel free to <a href="#">
					contact us</a> our customer service center is available for you 24/7.
				<hr>
				<form id="myform" action="register" method="post">
					<label for="name">Name</label> <input type="text"
						class="form-control" name="f1" placeholder="Enter Name" /></br> <label
						for="Email">Email</label></br> <input type="text" class="form-control"
						name="f2" placeholder="Enter Email" /></br> <label for="password">Password</label></br>
					<input type="password" class="form-control" name="f3"
						placeholder="Enter password" /></br>

					<p align="center">
						<input type="submit" value="REGISTER">
					</p>
					<%
						String v = (String) request.getAttribute("regstatus");
						if (v != null) {
							if (v.equals("true")) {
					%>
					<div class="alert alert-success">Registration Succesfull!</div>

					<%
						} else {
					%>
					<div class="alert alert-danger">Registration Failure</div>
					<%
						}
						}
					%>
				</form>
				<hr>
			</div>

			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-4">
					<b><h3>SIGN IN</h3></b></br> Already our customer.</br> </br> Get access to your
					orders, whishlists and recommendations.</br>
					<hr>
					<form action="login" method="post">
						<label for="Email">Email</label></br> <input type="text"
							class="form-control" name="f1" placeholder="Enter Email" /></br> <label
							for="password">Password</label></br> <input type="password"
							class="form-control" name="f2" placeholder="Enter password" /></br>

						<p align="center">
							<input type="submit" value="LOGIN">
						</p>
						<hr>
						<%
							String p = (String) request.getAttribute("logstatus");
							if (p != null) {
								if (p.equals("true")) {
						%>
						<div class="alert alert-success">Login Succesfull!</div>

						<%
							} else {
						%>
						<div class="alert alert-danger">Login Failure</div>
						<%
							}
							}
						%>
					</form>
				</div>
			</div>
		</div>

		<!--  Row 4 ends -->

		<!--  Row 5 starts -->

		<div class="row" style="background-color: grey;">
			<footer>
				<div class="container">
					<div class="row f">
						<br />
						<div class="col-md-3">

							<p>
								<b>ABOUT US</b>
							</p>
							<p>Prellentesque habitant morbi tristique senectus et netus
								et malesuada fames ac turpls egestas.</p>
							<hr />
							<p>
								<b>JOIN OUR MONTHLY NEWSLETTER</b>
							</p>
							<input type="email">
							<button>
								<span class="glyphicon glyphicon-send"></span>
							</button>
							</input>
						</div>
						<div class="col-md-3 blog">
							<p>
								<b>BLOG</b>
							</p>
							<div class="row">
								<img src="images/detailsquare1.jpg" class="col-md-3"></img>
								<p class="col-md-9">
									<b>BLOG POST NAME</b>
								</p>
							</div>
							<br>
							<div class="row">
								<img src="images/detailsquare1.jpg" class="col-md-3"></img>
								<p class="col-md-9">
									<b>BLOG POST NAME</b>
								</p>
							</div>
							<br>
							<div class="row">
								<img src="images/detailsquare1.jpg" class="col-md-3"></img>
								<p class="col-md-9">
									<b>BLOG POST NAME</b>
								</p>
							</div>
						</div>
						<div class="col-md-3">
							<p>
								<b>CONTACT</b>
							</p>
							<p>TECHASPECT SOLUTIONS PVT. LTD.</p>
							<p>PLOT NO. 38, N HEIGHTS, 3RD FLOOR</p>
							<p>HITECH CITY PHASE 2, MADHAPUR</p>
							<p>HYDERABAD, TELANGANA - 500081</p>
							<p>INDIA</p>
							<button class="btn btn-info">GO TO CONTACT PAGE</button>
						</div>
						<div class="col-md-3">
							<div class="row">
								<img src="images/detailsquare1.jpg" class="col-md-4 image">
								<img src="images/detailsquare2.jpg" class="col-md-4 image">
								<img src="images/detailsquare3.jpg" class="col-md-4 image">
							</div>
							<div class="row">
								<img src="images/detailsquare3.jpg" class="col-md-4 image">
								<img src="images/detailsquare2.jpg" class="col-md-4 image">
								<img src="images/detailsquare1.jpg" class="col-md-4 image">
							</div>
						</div>
					</div>
					<br>
				</div>
			</footer>
		</div>
		<!-- Row-5 End -->

		<!-- Row-6 Start -->
		<div class="row" style="background-color: black;">
			<div class="container-fluid copy last">
				<p>
					<span class="glyphicon glyphicon-copyright-mark f"></span> 2018.
					TechAspect Solutions Private Limited.
				</p>
			</div>
			<br /> <br />
		</div>
		<!-- Row-6 End -->


		<script src="js/jquery-3.3.1.js"></script>
		<script src="bootstrap/js/bootstrap.js"></script>
	</div>
</body>
</html>