<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page session="false"%>


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
    <link rel="shortcut icon" href="./resources/images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="./resources/images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css">    
	<!-- Site CSS -->
    <link rel="stylesheet" href="./resources/css/style.css"> 
    <link rel="stylesheet" href="./resources/css/classic.css">     
    <link rel="stylesheet" href="./resources/css/classic.date.css">    
	<link rel="stylesheet" href="./resources/css/classic.time.css">   
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="./resources/css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="./resources/css/custom.css">
    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"
          id="bootstrap-css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">

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
	
	<div class="main">
    <div class="" >
        <div class="" style="margin-left:150px;margin-bottom:100px;">
            <div class="col-md-6">
                <p class="my-5"><a href="/livedinner/contact-add" class="btn btn-primary"><i class="fas fa-user-plus ml-2"></i> Add Contact</a></p>
                <div>
                    <h2 class="my-5" style="color:red;">Contact</h2>
                    <table class="table table-striped table-responsive-md">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>PriPhone</th>
                            <th>SubPhone</th>
                            <th>Email</th>
                            <th>Address</th>
                            <th>Unused</th>
                            <th>Opening</th>
                            <th>Weekday</th>
                            <th>Weekend</th>
                            <th>Aboutus</th>
                            <th>Latitude</th>
                            <th>Logitude</th>
                            <th>EDIT</th>
                            <th>DELETE</th>
                        </tr>
                        </thead>
                        <tbody>
                        	${list}
                        </tbody>
                    </table>
                </div>
                
                <!--  -->

            </div>
        </div>
    </div>
</div>
	
	<tiles:insertAttribute name="qt"/>
	<tiles:insertAttribute name="customer"/>
	<tiles:insertAttribute name="contactinfo"/>
	<footer class="footer-area bg-f">
		<tiles:insertAttribute name="footer"/>
	</footer>
	
	<!-- ALL JS FILES -->
	<script src="./resources/js/jquery-3.2.1.min.js"></script>
	<script src="./resources/js/popper.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	
</body>
</html>