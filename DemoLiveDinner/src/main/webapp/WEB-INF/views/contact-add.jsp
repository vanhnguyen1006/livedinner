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
		<tiles:insertAttribute name="header"/>
	</header>
	<tiles:insertAttribute name="title"/>
	
	
	<form id="contactForm" method="get" action="<c:url value='contact-add/add' />">
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control" name="coname" placeholder="Your Name" required data-error="Please enter name">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control" name="priphone" placeholder="PriPhone" >
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control" name="subphone" placeholder="SubPhone">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="email" placeholder="Email">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="address" placeholder="Address">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<select class="custom-select d-block form-control"  name="unused" required data-error="Unused">
						<option disabled selected>Select Unused*</option>
						<option value="0">1</option>
						<option value="1">2</option>
					</select>
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="opening" placeholder="Opening">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="weekday" placeholder="Weekday">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="weekend" placeholder="Weekend">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="aboutus" placeholder="Aboutus">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="latitude" placeholder="Latitude">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control"  name="logitude" placeholder="Logitude">
					<div class="help-block with-errors"></div>
				</div>                                 
			</div>
			<div class="col-md-12">
				<div class="submit-button text-center">
					<button class="btn btn-common" id="submit" type="submit">ADD CONTACT</button>
					<div id="msgSubmit" class="h3 text-center hidden"></div> 
					<div class="clearfix"></div> 
				</div>
			</div>
		</div>
	</form>
	
	<tiles:insertAttribute name="qt"/>
	<tiles:insertAttribute name="customer"/>
	<tiles:insertAttribute name="contactinfo"/>
	<footer class="footer-area bg-f">
		<tiles:insertAttribute name="footer"/>
	</footer>
	
	<!-- ALL JS FILES -->
	<script src="<%=contextPath %>/resources/js/jquery-3.2.1.min.js"></script>
	<script src="<%=contextPath %>/resources/js/popper.min.js"></script>
	<script src="<%=contextPath %>/resources/js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	
</body>
</html>