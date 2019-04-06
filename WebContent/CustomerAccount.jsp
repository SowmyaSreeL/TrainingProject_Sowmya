<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Insert title here</title>
<!-- <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
	<link rel="stylesheet" href="fontawesome-free-5.5.0-web/css/all.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
</head>
<body>
	<%@include file="header2.jsp" %>
	<br />
	<!-- Row 1 ends -->

	<!-- Row 2 starts -->
	
	<!-- row 2 ends -->
	<!-- Row 3 starts -->

	<div class="row">
		<div class="pics">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h2>
							<strong>ACCOUNT</strong>
						</h2>
					</div>
					<div class="col-md-4">
						<ul class="nav navbar-nav">
							<li><a href="homepage.jsp">HOME /</a></li>
							<li><a href="#" style="color: black">MY ACCOUNT</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br />
	<div class="row">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img src="images/logo.jpg">
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
						<li><a href="#" style="color: black">HOME &amp; FURNITURE
								<span class="caret"></span>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<br/>
	<!-- Row 3 ends -->

	<!-- Row 4 starts -->
	<div class="row">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<p>Change your personal details or password here</p>

					<p id="b">Pellentesque habitant morbi tristique senectus et
						netus et malesuada fames ac turpls egestas</p>
					<hr>
					<form action="update" method="post" class="container-fluid">
						<h3>
							<b>CHANGE PASSWORD</b>
						</h3>
						<hr class="linedesign" align="left">
						<div class="row">
							<div class="form-group col-md-6">
								<label for="op">Old Password</label> <input type="password"
									class="form-control" name="f1" />
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<label for="op">New Password</label> <input type="password"
									class="form-control" name="f2" />
							</div>
							<div class="form-group col-md-6">
								<label for="op">Retype New Password</label> <input
									type="password" class="form-control" name="f3" />
							</div>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary center-block">
								<span class="glyphicon glyphicon-floppy-disk"> SAVE NEW
									PASSWORD</span>
							</button>
						</div>

					</form>
					

					<%
						String v = (String) request.getAttribute("pwstatus");
						if (v != null) {
							if (v.equals("true")) {
					%>
					<div class="alert alert-success">Password Changed
						Succesfully!</div>

					<%
						} else if (v.equals("false")) {
					%>
					<div class="alert alert-danger">Failure in changing
						Password..Try Again Later..</div>
					<%
						} else if (v.equals("unmatched")) {
					%>
					<div class="alert alert-danger">Password and re-type password
						are not matched!!!..</div>
					<%
						} else {
					%>
					<div class="alert alert-danger">Old password field is not
						matched in the DB password are not matched!!!..</div>
					<%
						}
						}
					%>


					<hr>
					<form action="details" method="post">
						<div class="row"></div>
						<h3>
							<b>PERSONAL DETAILS<b></b>
						</h3>
						<hr class="linedesign" align="left">

						<div class="row">

							<div class="form-group col-md-6">
								<label for="fn">First Name</label> <input type="text"
									class="form-control" name="f1" />
							</div>
							<div class="form-group col-md-6">
								<label for="ln">Last Name</label> <input type="text"
									class="form-control" name="f2" />
							</div>
						</div>
						<label for="gen">Gender</label>
						<div class="radio">
							<label><input type="radio" name="f3">Male</label>
						</div>
						<div class="radio">
							<label><input type="radio" name="f3">Female </label>
						</div>
						<div class="radio">
							<label><input type="radio" name="f3">Transgender
							</label>
						</div>
						<label for="add">Address</label>
						<textarea class="form-control" rows="2" name="f4"></textarea>
						<div class="row">
							<div class="form-group col-md-3">
								<label for="cty">City</label> <input type="text"
									class="form-control" name="f5" />
							</div>
							<div class="form-group col-md-3">
								<label for="cty">Zip</label> <input type="text"
									class="form-control" name="f6" />
							</div>
							<div class="form-group col-md-3">
								<label for="st">State</label> <select id="state"
									class="form-control"><option>Hyderabad</option>
									<option>Banglore</option>
									<option>Chennai</option></select>
							</div>
							<div class="form-group col-md-3">
								<label for="ctry">Country</label> <select id="ctry"
									class="form-control">
									<option>India</option>
									<option>USA</option>
									<option>UAE</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<label for="ctct">Contact</label> <input type="text"
									class="form-control" name="f7" />
							</div>
							<div class="form-group col-md-6">
								<label for="emai">Email</label> <input type="text"
									class="form-control" />
							</div>
						</div>
						<button class="btn btn-primary center-block c">
							<span class="glyphicon glyphicon-floppy-disk"> SAVE
								CHANGES</span>
						</button>
					</form>
					<br> <br>
				</div>
				<div class="col-md-4">
					<br> <br>
					<h5>
						<strong>CUSTOMER SECTION</strong>
					</h5>
					<ul class="nav nav-pills nav-stacked">
						<li class="pp"><a href="#"><span
								class="glyphicon glyphicon-list"></span> My Orders</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-heart "></span>
								My Wishlist</a></li>
						<li class="active pp"><a href="#"><span
								class="glyphicon glyphicon-user"></span> My Account </a></li>
						<li><a href="logout.jsp"><span
								class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					</ul>
				</div>

			</div>
		</div>
		<!-- 4th row end -->
		<!-- 5th row start -->
		<%@ include file="footer1.html"%>
		<%@ include file="footer2.html"%>
	</div>
</body>
</html>