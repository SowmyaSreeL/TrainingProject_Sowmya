<div class="row">
	<div class="header">
		<div class="container">
			<div class="row">
				<div class="col-md-3 ">Contact us on +91 4066217777</div>
				<div class="col-md-9">
					<div class="col-md-5 dropdown">
						<%
							HttpSession ses = request.getSession();
							String name = (String) ses.getAttribute("fullname");
						%>
						<strong>WELCOME&nbsp;</strong>
						<button class="btn btn-default dropdown-toggle"
							style="color: white; background-color: grey; border: grey"
							type="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							<strong><%=name%></strong>&nbsp;<span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu">
							<li><a class="dropdown-item" href="CustomerAccount.jsp">Account</a></li>
							<li><a class="dropdown-item" href="logout.jsp">LogOut</a></li>
						</ul>
						
					</div>


					<div class="col-md-3">
						<a href="signIn.jsp" style="color: white"><span
							class="glyphicon glyphicon-user">VENDOR-SIGN-IN</span></a>
					</div>
					<div class="col-md-4">
						<button class="btn" style="background-color: transparent">
							<i class="fab fa-facebook-f"></i> 
						</button>
						<button class="btn" style="background-color: transparent">
							<i class="fab fa-google-plus-g"></i>
						</button>
						<button class="btn" style="background-color: transparent">
							<i class="fab fa-twitter"></i>
						</button>
						<button class="btn" style="background-color: transparent">
							<i class="fas fa-envelope"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>