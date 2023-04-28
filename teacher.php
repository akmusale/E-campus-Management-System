<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>
<!doctype html>
<html>
<head>
<title>E-campus  Management System || About Us Page</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--bootstrap nevigation bar -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!--coustom css-->
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<!--script-->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- js -->
<script src="js/bootstrap.js"></script>
<!-- /js -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Open+Sans:300,300italic,400italic,400,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--/fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
<!--/script-->
</head>
	<body>
<!--header-->
<?php include_once('includes/header.php');?>
<!-- Top Navigation -->
<div class="banner banner5">
	<div class="container">
	<h2>Teachers</h2>
	</div>
</div>
<!--header-->
<!-- About -->
<div class="about">
	 <div class="container">
		 <div class="about-info-grids">
			 <div class="col-md-5 abt-pic">
	 </div>

<head>
<style>
#teacher {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#teacher td, #teacher th {
  border: 1px solid #ddd;
  padding: 8px;
}

#teacher tr:nth-child(even){background-color: #f2f2f2;}

#teacher tr:hover {background-color: #ddd;}

#teacher th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>

<h1>Teachers Details</h1>

<table id="teacher">
  <tr>
    <th>Teacher ID</th>
    <th>Teacher Name</th>
    <th>Qualification</th>
  
  </tr>

  <tr>
    <td>TID-265</td>
    <td>Mr.Dhiraj Patil</td>
    <td>Msc(CS)</td>
  </tr>
  <tr>
    <td>TID-153</td>
    <td>Mr.Kritesh Sharma</td>
    <td>Mca</td>
  </tr>
  <tr>
    <td>TID-165</td>
    <td>Miss.Aastha Sing</td>
    <td>Mtech</td>
  </tr>
  <tr>
    <td>TID-101</td>
    <td>Mr.Jainam Jain</td>
    <td>(M. Sc.) Chemistry</td>
  </tr>
  <tr>
    <td>TID-230</td>
    <td>Miss.Shruti Hinduja</td>
    <td>PhD in English</td>
  </tr>
  <tr>
    <td>TID-53</td>
    <td>Miss.Vaishnavi Gharte </td>
    <td>PhD in Physics</td>
  </tr>
  <tr>
    <td>TID-86</td>
    <td>Mr.Rahul Yeola</td>
    <td>PhD Computer Science Engineering</td>
  </tr>


</table>

</body>




			 	
<!-- /About -->
<?php include_once('includes/footer.php');?>
<!--/copy-rights-->
	</body>
</html>
