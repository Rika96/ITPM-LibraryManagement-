<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ITPM Index page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel="stylesheet" href="css/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}



		#navigation,.navbar .navbar-default {
			background-image: url("imgs/download.jpg"); 
			background-repeat-y: no-repeat;
			
		}
		
		body {
		  background-color: #f0f0f0;
		  font: 1rem 'Open Sans',sans-serif;
		}

</style>
</head>
<body class="w3-theme-l5">
	
				<!-- Navbar -->
	<div class="w3-top">
	 <nav class="navbar navbar-dark bg-light" style="padding:20px; width:100%;" id="navigation" role="navigation">
			<a href="IndexH.jsp"><img alt="LOGO"  style="height:120px;width:180px"></a>
			<h2 class="w3-center" align="centre">Home</h2>
	  		<a class="navbar-brand"></a>
		</nav>
	</div>
	
	<!-- Page Container -->
	<div class="w3-container w3-content" style="max-width:1400px;margin-top:150px">   
	
	 <br><br><br>
	  <!-- The Grid -->
	  <div class="w3-row">
	    <!-- Left Column -->
	    <div class="w3-col m4">
	      <!-- 1st cage -->
	      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-grey">
            <div class="w3-container w3-padding">
            <h4 class="w3-center">Books</h4>
              <p class="w3-center"><img src="imgs/avatar.jpg" class="w3-square" style="height:106px;width:106px" alt="Avatar"></p>
              <hr>
              <a href="Customer.jsp"><button type="button" class="btn btn-outline-primary my-2 my-sm-0 "><i class="fa fa-pencil"></i> Books</button></a> 
            </div>
          </div>
        </div>
      </div>
	      <br>	      
	      
	      
	    <!-- End Left Column -->
	    </div>
	    
	    <!-- Middle Column -->
    <div class="w3-col m4">
    
    <!-- cage 1-->
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-grey">
            <div class="w3-container w3-padding">
            <h4 class="w3-center">Users</h4>
              <p class="w3-center"><img src="imgs/avatar.jpg" class="w3-square" style="height:106px;width:106px" alt="Avatar"></p>
              <hr>
              <a href="Complaints.jsp"><button type="button" class="btn btn-outline-primary my-2 my-sm-0 "><i class="fa fa-pencil"></i> Users</button></a> 
            </div>
          </div>
        </div>
      </div>
      
  
      
      
    <!-- End Middle Column -->
    </div>
    
        <div class="w3-col m4">
    
    <!-- cage 3.1-->
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-grey">
            <div class="w3-container w3-padding">
            <h4 class="w3-center">Solutions</h4>
              <p class="w3-center"><img src="imgs/avatar.jpg" class="w3-square" style="height:106px;width:106px" alt="Avatar"></p>
              <hr>
              <a href="Solutions.jsp"><button type="button" class="btn btn-outline-primary my-2 my-sm-0 "><i class="fa fa-pencil"></i> Solutions</button></a> 
            </div>
          </div>
        </div>
      </div>
      <br>
      
      
      </div>
    
    
  <!-- End Grid -->
  </div>
  
  
  
  
	<!-- End Page Container -->
	</div>
	<br>
	
	
	
</body>
</html>