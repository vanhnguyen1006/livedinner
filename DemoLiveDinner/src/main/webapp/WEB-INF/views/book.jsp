<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false"%>

<%

%>

<!DOCTYPE html>
<html lang="en"><!-- Basic -->
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Live Dinner Book</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="./resources/images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="./resources/images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css">    
	<!-- Site CSS -->
    <link rel="stylesheet" href="./resources/css/style.css">    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="./resources/css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="./resources/css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	
	<header class="top-navbar">
		<tiles:insertAttribute name="header"/>
	</header>
	<tiles:insertAttribute name="title"/>
	
	<form id="contactForm" method="post" action="add">
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<input path="coname" type="text" class="form-control" id="name" name="coname" placeholder="Menu Name" required data-error="Please enter name">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input path="ctgid" type="text" class="form-control" id="ctgid" name="ctgid" placeholder="Category" >
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input path="intro" type="text" class="form-control" id="intro" name="intro" placeholder="Your Intro">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input path="details" type="text" class="form-control" id="details" name="details" placeholder="Details">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input path="price" type="text" class="form-control" id="price" name="price" placeholder="Price">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input path="currency" type="text" class="form-control" id="currency" name="currency" placeholder="Currency">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="submit-button text-center">
					<button class="btn btn-common" id="submit" type="submit">Send Message</button>
					<div id="msgSubmit" class="h3 text-center hidden"></div> 
					<div class="clearfix"></div> 
				</div>
			</div>
		</div>
	</form>
	
	
	<footer class="footer-area bg-f">
		<tiles:insertAttribute name="footer"/>
	</footer>
	
	<!-- ALL JS FILES -->
	<script src="./resources/js/jquery-3.2.1.min.js"></script>
	<script src="./resources/js/popper.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	<script src="./resources/js/jquery.superslides.min.js"></script>
	<script src="./resources/js/images-loded.min.js"></script>
	<script src="./resources/js/isotope.min.js"></script>
	<script src="./resources/js/baguetteBox.min.js"></script>
	<script src="./resources/js/form-validator.min.js"></script>
    <script src="./resources/js/contact-form-script.js"></script>
    <script src="./resources/js/custom.js"></script>
    <script src="./resources/js/active.js"></script>
</body>
</html>