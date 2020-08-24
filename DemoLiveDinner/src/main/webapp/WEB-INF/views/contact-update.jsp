<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false"%>

<% String contextPath = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en"><!-- Basic -->
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Live Dinner Contact</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="<%=contextPath %>/resources/images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="<%=contextPath %>/resources/images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%=contextPath %>/resources/css/bootstrap.min.css">    
	<!-- Site CSS -->
    <link rel="stylesheet" href="<%=contextPath %>/resources/css/style.css"> 
    <link rel="stylesheet" href="<%=contextPath %>/resources/css/classic.css">     
    <link rel="stylesheet" href="<%=contextPath %>/resources/css/classic.date.css">    
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/classic.time.css">   
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="<%=contextPath %>/resources/css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<%=contextPath %>/resources/css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="<%=contextPath %>">
					<img src="<%=contextPath %>/resources/images/logo.png" alt="" />
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
	</header>
	<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1></h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
	<form id="contactForm" method="post" action="" >
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control" name="coname" placeholder="Your Name" required data-error="Please enter name" value="${contact.coname }">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control" name="priphone" placeholder="PriPhone" value="${contact.priphone }" required data-error="Please enter priphone">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control" name="subphone" placeholder="SubPhone" value="${contact.subphone }" required data-error="Please enter subphone">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="email" placeholder="Email" value="${contact.email }" required data-error="Please enter email">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="address" placeholder="Address" value="${contact.address }" required data-error="Please enter address">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<select class="custom-select d-block form-control"  name="unused" required data-error="Unused" value="${contact.unused }">
						<option disabled selected>Select Unused*</option>
						<option value="0">1</option>
						<option value="1">2</option>
					</select>
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="opening" placeholder="Opening" value="${contact.opening }" required data-error="Please enter opening">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="weekday" placeholder="Weekday" value="${contact.weekday }"  required data-error="Please enter weekday">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="weekend" placeholder="Weekend" value="${contact.weekend }" required data-error="Please enter weekend">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="aboutus" placeholder="Aboutus" value="${contact.aboutus }" required data-error="Please enter aboutus">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="latitude" placeholder="Latitude" value="${contact.latitude }" required data-error="Please enter latitude">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="logitude" placeholder="Logitude" value="${contact.logitude }" required data-error="Please enter logitude">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="submit-button text-center">
					<button class="btn btn-common" id="submit" type="submit">UPDATE</button>
					<div id="msgSubmit" class="h3 text-center hidden"></div> 
					<div class="clearfix"></div> 
				</div>
			</div>
		</div>
	</form>
	
	<!-- Start QT -->
	<div class="qt-box qt-background">
		<div class="container">
			<div class="row">
				<div class="col-md-8 ml-auto mr-auto text-center">
					<p class="lead ">
						" If you're not the one cooking, stay out of the way and compliment the chef. "
					</p>
					<span class="lead">Michael Strahan</span>
				</div>
			</div>
		</div>
	</div>
	<!-- End QT -->
	<div class="customer-reviews-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Customer Reviews</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8 mr-auto ml-auto text-center">
					<div id="reviews" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner mt-4">
							<div class="carousel-item text-center active">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle" src="<%=contextPath %>/resources/images/quotations-button.png" alt="">
								</div>
								<h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Paul Mitchel</strong></h5>
								<h6 class="text-dark m-0">Web Developer</h6>
								<p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Idac bibendum scelerisque non non purus. Suspendisse varius nibh non aliquet.</p>
							</div>
							<div class="carousel-item text-center">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle" src="<%=contextPath %>/resources/images/quotations-button.png" alt="">
								</div>
								<h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Steve Fonsi</strong></h5>
								<h6 class="text-dark m-0">Web Designer</h6>
								<p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Idac bibendum scelerisque non non purus. Suspendisse varius nibh non aliquet.</p>
							</div>
							<div class="carousel-item text-center">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle" src="<%=contextPath %>/resources/images/quotations-button.png" alt="">
								</div>
								<h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Daniel vebar</strong></h5>
								<h6 class="text-dark m-0">Seo Analyst</h6>
								<p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Idac bibendum scelerisque non non purus. Suspendisse varius nibh non aliquet.</p>
							</div>
						</div>
						<a class="carousel-control-prev" href="#reviews" role="button" data-slide="prev">
							<i class="fa fa-angle-left" aria-hidden="true"></i>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#reviews" role="button" data-slide="next">
							<i class="fa fa-angle-right" aria-hidden="true"></i>
							<span class="sr-only">Next</span>
						</a>
                    </div>
				</div>
			</div>
		</div>
	</div>
	<!-- Start Contact info -->
	<div class="contact-imfo-box">
		<div class="container">
			<div class="row">
				<div class="col-md-4 arrow-right">
					<i class="fa fa-volume-control-phone"></i>
					<div class="overflow-hidden">
						<h4>Phone</h4>
						<p class="lead">
							+01 123-456-4590
						</p>
					</div>
				</div>
				<div class="col-md-4 arrow-right">
					<i class="fa fa-envelope"></i>
					<div class="overflow-hidden">
						<h4>Email</h4>
						<p class="lead">
							yourmail@gmail.com
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<i class="fa fa-map-marker"></i>
					<div class="overflow-hidden">
						<h4>Location</h4>
						<p class="lead">
							800, Lorem Street, US
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact info -->
	
	<footer class="footer-area bg-f">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<h3>About Us</h3>
					<p>Integer cursus scelerisque ipsum id efficitur. Donec a dui fringilla, gravida lorem ac, semper magna. Aenean rhoncus ac lectus a interdum. Vivamus semper posuere dui.</p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Subscribe</h3>
					<div class="subscribe_form">
						<form class="subscribe_form">
							<input name="EMAIL" id="subs-email" class="form_input" placeholder="Email Address..." type="email">
							<button type="submit" class="submit">SUBSCRIBE</button>
							<div class="clearfix"></div>
						</form>
					</div>
					<ul class="list-inline f-social">
						<li class="list-inline-item"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Contact information</h3>
					<p class="lead">Ipsum Street, Lorem Tower, MO, Columbia, 508000</p>
					<p class="lead"><a href="#">+01 2000 800 9999</a></p>
					<p><a href="#"> info@admin.com</a></p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Opening hours</h3>
					<p><span class="text-color">Monday: </span>Closed</p>
					<p><span class="text-color">Tue-Wed :</span> 9:Am - 10PM</p>
					<p><span class="text-color">Thu-Fri :</span> 9:Am - 10PM</p>
					<p><span class="text-color">Sat-Sun :</span> 5:PM - 10PM</p>
				</div>
			</div>
		</div>
		
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<p class="company-name">All Rights Reserved. &copy; 2018 <a href="#">Live Dinner Restaurant</a> Design By : 
					<a href="https://html.design/">html design</a></p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	
	<!-- ALL JS FILES -->
	<script src="<%=contextPath %>/resources/js/jquery-3.2.1.min.js"></script>
	<script src="<%=contextPath %>/resources/js/popper.min.js"></script>
	<script src="<%=contextPath %>/resources/js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	
</body>
</html>