<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
		<div class"row">
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
						<li><a href="#" style="color: black">ELECTRONICS <span class="caret"></span></a></li>
						<li><a href="#" style="color: black">MEN <span class="caret"></span></a></li>
						<li><a href="#" style="color: black">WOMEN <span class="caret"></span></a></li>
						<li><a href="#"style="color: black">BABY &amp; KIDS <span class="caret"></span></a></li>
						<li><a href="#" style="color: black">HOME &amp; FURNITURE <span class="caret"></span></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
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
							<li><a href="#">HOME /</a></li>
							<li><a href="#" style="color: black">MY ACCOUNT</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br />
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
					<form class="container-fluid">
						<h3>
							<b>CHANGE PASSWORD</b>
						</h3>
						<hr class="linedesign" align="left">
						<div class="row">
							<div class="form-group col-md-6">
								<label for="op">Old Password</label> <input type="text"
									class="form-control" />
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<label for="op">New Password</label> <input type="text"
									class="form-control" />
							</div>
							<div class="form-group col-md-6">
								<label for="op">Retype New Password</label> <input type="text"
									class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<button class="btn btn-primary center-block c">
								<span class="glyphicon glyphicon-floppy-disk"> SAVE NEW
									PASSWORD</span>
							</button>
						</div>
						<hr>
						<div class="row"></div>
						<h3>
							<b>PERSONAL DETAILS<b></b>
						</h3>
						<hr class="linedesign" align="left">
						<div class="row">
							<div class="form-group col-md-6">
								<label for="fn">First Name</label> <input type="text"
									class="form-control" />
							</div>
							<div class="form-group col-md-6">
								<label for="ln">Last Name</label> <input type="text"
									class="form-control" />
							</div>
						</div>
						<label for="gen">Gender</label>
						<div class="radio">
							<label><input type="radio" name="optradio">Male</label>
						</div>
						<div class="radio">
							<label><input type="radio" name="optradio">Female
							</label>
						</div>
						<div class="radio">
							<label><input type="radio" name="optradio">Transgender
							</label>
						</div>
						<label for="add">Address</label>
						<textarea class="form-control" rows="2"></textarea>
						<div class="row">
							<div class="form-group col-md-3">
								<label for="cty">City</label> <input type="text"
									class="form-control" />
							</div>
							<div class="form-group col-md-3">
								<label for="cty">Zip</label> <input type="text"
									class="form-control" />
							</div>
							<div class="form-group col-md-3">
								<label for="st">State</label> <select id="state"
									class="form-control"><option></option></select>
							</div>
							<div class="form-group col-md-3">
								<label for="ctry">Country</label> <select id="ctry"
									class="form-control"><option></option></select>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<label for="ctct">Contact</label> <input type="text"
									class="form-control" />
							</div>
							<div class="form-group col-md-6">
								<label for="emai">Email</label> <input type="text"
									class="form-control" />
							</div>
						</div>
						<button class="btn btn-primary center-block c">
							<span class="glyphicon glyphicon-floppy-disk"> SAVE
								CHANGES</span>
						</button><br><br>
					</form>
				</div>
				<div class="col-md-4">
				<br> <br>
				<h5>
					<strong>CUSTOMER SECTION</strong>
				</h5>
				<ul class="nav nav-pills nav-stacked">
					<li class="active pp"><a href="#"><span
							class="glyphicon glyphicon-list"></span> My Orders</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-heart "></span>
							My Wishlist</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							My Account </a></li>
					<li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span>
							Logout</a></li>
				</ul>
			</div>
			
			</div>
		</div>
		<!-- 4th row end -->
		<!-- 5th row start -->
		<div class="row">
			<div class="footer">
				<div class="container">
				
					<div class="col-md-3">
						<p><b>ABOUT US</b></p>
						<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpls egestas.</p>
						<hr>
						<h5><b>JOIN OUR MONTHLY NEWSTELLER</b></h5>
						<input type="email">
							<button>
								<span class="glyphicon glyphicon-send"></span>
							</button>
						</input>
					</div>
					<div class="col-md-3">
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
							</br>
							</br>
							</br>
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
			</div>
		</div>
		
		<!-- 5th row end -->
		<!-- 6th row start -->
		<div class="row">
			<div class="last">
				<div class="container-fluid">
					<div class="container f">
						<p>
							<span class="glyphicon glyphicon-copyright-mark"></span> 2018.
							TechAspect Solutions Private Limited.
						</p>
						<br/><br/>
					</div>
				</div>
			</div>
			
		</div>
		<!-- 6th row end -->
	</div>
</body>
</html>