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
<!--<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
	<link rel="stylesheet" href="fontawesome-free-5.5.0-web/css/all.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
</head>
<body>

	<div class="container-fluid">
		<!-- Row 1 starts -->
		<%
			HttpSession ses2 = request.getSession();
			String p=(String)ses2.getAttribute("fullname");
			if(p!=null){%>
				<%@ include file="header2.jsp"%>
				<%}
			else
			{%>
			<%@ include file="header.jsp"%>
			<% }%>
		<br />
		<!-- Row 1 ends -->

		<!-- Row 2 starts -->
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
							<li><a href="#" style="color: black">HOME &amp;
									FURNITURE <span class="caret"></span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<br /> <br />
		<!-- Row 3 starts -->

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/p1.jpg" alt="Los Angeles" style="width: 100%;">
				</div>

				<div class="item">
					<img src="images/p2.jpg" alt="Chicago" style="width: 100%;">
				</div>

				<div class="item">
					<img src="images/p3.jpg" alt="New york" style="width: 100%;">
				</div>

				<div class="item">
					<img src="images/p4.jpg" alt="New york" style="width: 100%;">
				</div>

				<div class="item">
					<img src="images/p5.jpg" alt="New york" style="width: 100%;">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
		<br /> <br />

		<div class="row dark ml mar-left">
			<div class="col-md-offset-1 col-md-10">
				<h4 class="text-white">Deals of the Day</h4>
			</div>
			<div class="col-md-1">
				<a href="#" class="btn btn-primary">View all</a>
			</div>
		</div>
		<br />

		<div class="row ml mar-left">
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/1.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Men's Footwear</b>
				</p>
				<p>Upto 60 + Extra 10% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/2.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Adidas, Reebok &amp; Puma</b>
				</p>
				<p>Upto 50 + Extra 5% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/3.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Laptop Bags</b>
				</p>
				<p>From &#8377;&nbsp;249</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/4.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Memory Cards</b>
				</p>
				<p>Extra 5% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/5.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Timex, Maxima...</b>
				</p>
				<p>Under &#8377;999 + Extra 7% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/6.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Skybags, American...</b>
				</p>
				<p>Under &#8377;999 + Extra 5% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
		</div>

		<div class="row dark ml mar-left">
			<div class="col-md-offset-1 col-md-10">
				<h4 class="text-white">Featured Brands</h4>
			</div>
			<div class="col-md-1">
				<a href="#" class="btn btn-primary">View all</a>
			</div>
		</div>
		<br />

		<div class="row ml mar-left">
			<div class="col-md-3  center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/7.jpg"
					class="col-md-12 pad" /></a><br />

			</div>
			<div class="col-md-3  center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/8.jpg"
					class="col-md-12 pad" /></a><br />

			</div>
			<div class="col-md-3  center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/9.jpg"
					class="col-md-12 pad" /></a><br />

			</div>
			<div class="col-md-3 center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/10.jpg"
					class="col-md-12 pad" /></a><br />

			</div>

		</div>

		<div class="row dark ml mar-left">
			<div class="col-md-offset-1 col-md-10">
				<h4 class="text-white">Mobile New Launches</h4>
			</div>
			<div class="col-md-1">
				<a href="#" class="btn btn-primary">View all</a>
			</div>
		</div>
		<br />

		<div class="row ml mar-left">
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/11.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Redmi Note 6 Pro</b>
				</p>
				<p>12MP+5MP | 20MP+2MP</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/12.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Realme 2</b>
				</p>
				<p>13MP+2MP | 8MP</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/13.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Realme c1</b>
				</p>
				<p>13MP+2MP | 5MP Camera</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/14.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Nokia 6.1 Plus</b>
				</p>
				<p>16MP+5MP Camera</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/15.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Lenovo A5</b>
				</p>
				<p>16MP | 8MP Camera</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/16.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Redmi Note 5 Pro</b>
				</p>
				<p>12MP+5MP Camera</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
		</div>

		<div class="row dark ml mar-left">
			<div class="col-md-offset-1 col-md-10">
				<h4 class="text-white">Home Decor Range</h4>
			</div>
			<div class="col-md-1">
				<a href="#" class="btn btn-primary">View all</a>
			</div>
		</div>
		<br />

		<div class="row ml mar-left">
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/17.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Decorative Botteles</b>
				</p>
				<p>From &#8377;199</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/18.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Wall Clocks</b>
				</p>
				<p>Minimum 50% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/19.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>FengShui Showpieces</b>
				</p>
				<p>Under &#8377;999</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/20.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Wall Shelves</b>
				</p>
				<p>Upto 80% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/21.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Laser Lights</b>
				</p>
				<p>Upto 60% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/22.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Hookahs & Bongs</b>
				</p>
				<p>Under &#8377;599</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
		</div>

		<div class="row dark ml mar-left">
			<div class="col-md-offset-1 col-md-10">
				<h4 class="text-white">Fashion Accessories</h4>
			</div>
			<div class="col-md-1">
				<a href="#" class="btn btn-primary">View all</a>
			</div>
		</div>
		<br />

		<div class="row ml mar-left">
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/23.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Ray-Ban, Fastrack...</b>
				</p>
				<p>20-60% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/24.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Cross, Woodland...</b>
				</p>
				<p>Top Rated</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/25.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Casio, Maxima...</b>
				</p>
				<p>Upto 50% 0ff</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/26.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Casio, Fastrack...</b>
				</p>
				<p>10-50% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/27.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Titan, Fastrack...</b>
				</p>
				<p>20-80% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" /> <a href="#"><img src="images/28.jpeg"
					class="col-md-12 pad" /></a><br />
				<p>
					<b>Fastrack</b>
				</p>
				<p>Under &#8377;999</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" /> <br clear="all" />
			</div>
		</div>
		<%@ include file="footer1.html"%>
		<%@ include file="footer2.html"%>
	</div>


	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>