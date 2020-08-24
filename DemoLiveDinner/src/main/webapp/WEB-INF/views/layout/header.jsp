<% String contextPath = request.getContextPath(); %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="<%=contextPath %>">
					<img src="./resources/images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item" onclick="showHome()" id="home"><a class="nav-link" href="<%=contextPath %>">Home</a></li>
						<li class="nav-item" id="menu" onclick="showMenu()"><a class="nav-link" href="<%=contextPath %>/menu">Menu</a></li>
						<li class="nav-item" id="about" onclick="showAbout()"><a class="nav-link" href="<%=contextPath %>/about">About</a></li>
						<li class="nav-item dropdown"  id="pages"  onclick="pages()">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Pages</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="<%=contextPath %>/#">Reservation</a>
								<a class="dropdown-item" href="<%=contextPath %>/#">Stuff</a>
								<a class="dropdown-item" href="<%=contextPath %>/#">Gallery</a>
							</div>
						</li>
						<li class="nav-item dropdown"  id="blog">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Blog</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="<%=contextPath %>/#">blog</a>
								<a class="dropdown-item" href="<%=contextPath %>/#">blog Single</a>
							</div>
						</li>
						<li class="nav-item"  id="contact"><a class="nav-link" href="<%=contextPath %>/contact">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
<script src="../resources/js/active.js"></script>
