<%-- 
    Document   : Book_Borrow
    Created on : 10-May-2019, 11:26:15
    Author     : Chathurika
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
    <head>

        <title>ADM Library Management System</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="librarycss.css">
    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>                        
                </button>
                <a class="navbar-brand" href="#myPage" ><strong Style="font-size: 30px;">ADM</strong>Library</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#about">BORROW</a></li>
                    <li><button class="btn btn-success" Style="padding: 14px;"><a href="AdminIndex.jsp">SIGN UP</a></li></button>
                    <li><a href="#portfolio">BOOKS</a></li>
                    <li><a href="#pricing">PRICING</a></li>
                    <li><a href="#contact">CONTACT</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="jumbotron text-center">

        <h1>ADM Library</h1> 
        <p>Path to Wisdom</p> 
        <form>
            <div class="input-group">
                <input type="book" class="form-control" size="70" Style="padding: 20px;" placeholder="What do you want" required>
                <div class="input-group-btn">
                    <button type="button" class="btn btn-danger" Style="padding: 10px;">Find a book</button>
                </div>
            </div>
        </form>
    </div>


    <%
        String sID = request.getParameter("sID");
        String ISBM_no = request.getParameter("ISBM_no");
        String issueDate = request.getParameter("issueDate");
        String returnDate = request.getParameter("returnDate");

        String url = "jdbc:mysql://localhost/librarydb";
        String user = "root";
        String pass = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, pass);
            Statement st = con.createStatement();

            //insert all items details into item table
            int i = st.executeUpdate("INSERT INTO issueresource(sID,ISBM_no,issueDate,returnDate)VALUES('" + sID + "','" + ISBM_no + "','" + issueDate + "','" + returnDate + "')");
            out.println("Data Is Successfully Inserted !");
        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();
        }
    %>
    <!-- Container (About Section) -->
    <div id="about" class="container-fluid">
        <div class="row">
            <div class="col-sm-8">
                <h2>Form of Borrowing Books</h2><br>
                <form method="post" name="insertForm"  action="Book_Borrow.jsp">

                    <div class="form-group">
                        <label for="formGroupExampleInput2">ID of the Student</label>
                        <input type="text" class="form-control" id="formGroupExampleInput2" name="sID" placeholder="Enter ID of the Student">
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput4">ISBM No</label>
                        <input type="text" class="form-control" id="formGroupExampleInput4" name="ISBM_no" placeholder="Enter ISBM no of the book">
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput4">Issue Date</label>
                        <input type="date" class="form-control" id="formGroupExampleInput4" name="issueDate" placeholder="Enter issue date">
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput4">Return Date</label>
                        <input type="date" class="form-control" id="formGroupExampleInput4" name="returnDate" placeholder="Enter return date">
                    </div>
                    <br>
                    <input type="submit" class="button">
                </form>
            </div>

        </div>

    </div>

    <div class="container-fluid bg-grey">
        <div class="row">

            <div class="col-sm-8">

            </div>
        </div>
    </div>


    <!-- Container (Portfolio Section) -->
    <div id="portfolio" class="container-fluid text-center bg-grey">
        <h2>Books</h2><br>
        <h4>Check out the latest</h4>
        <div class="row text-center slideanim">
            <div class="col-sm-4">
                <div class="thumbnail">
                    <img src="images/newcover4.jpg" alt="HP1" width="400" height="300">
                    <p><strong>Harry Potter</strong></p>
                    <p>The Goblet of Fire</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail">
                    <img src="images/newcover1.jpg" alt="HP2" width="400" height="300">
                    <p><strong>Harry Potter</strong></p>
                    <p>The sorcerer's stone</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail">
                    <img src="images/newcover3.jpg" alt="HP3" width="400" height="300">
                    <p><strong>Harry Potter</strong></p>
                    <p>The Half-Blood Prince</p>
                </div>
            </div>
        </div><br>

        <h2>What our customers say</h2>
        <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <h4>"I want to read more Books"<br><span>Martin Garrix, Vice President,FB </span></h4>
                </div>
                <div class="item">
                    <h4>"One word... WOW!!"<br><span>John Doe, Salesman, Public Library</span></h4>
                </div>
                <div class="item">
                    <h4>"Amda ge poth nadda?"<br><span>Chandler Bing, Actor, FriendsAlot</span></h4>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    <!-- Container (Pricing Section) -->
    <div id="pricing" class="container-fluid">
        <div class="text-center">
            <h2>Pricing</h2>
            <h4>Choose a payment plan that works for you</h4>
        </div>
        <div class="row slideanim">
            <div class="col-sm-4 col-xs-12">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h1>Basic</h1>
                    </div>
                    <div class="panel-body">
                        <p><strong>6 months</strong> Membership</p>
                        <p><strong>2 books</strong> at a time</p>
                        <p><strong>24/7</strong> Study room</p>
                        <p><strong>Free</strong> Guidance</p>
                        <p><strong>Endless</strong> Varieties of books & magazines</p>
                    </div>
                    <div class="panel-footer">
                        <h3>Rs 500/=</h3>
                        <h4>per month</h4>
                        <button class="btn btn-lg">Sign Up</button>
                    </div>
                </div>      
            </div>     
            <div class="col-sm-4 col-xs-12">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h1>Pro</h1>
                    </div>
                    <div class="panel-body">
                        <p><strong>1 year</strong> Membership</p>
                        <p><strong>5 books</strong> at a time</p>
                        <p><strong>24/7</strong> Study room / Computer lab facilties</p>
                        <p><strong>Free</strong> Guidance</p>
                        <p><strong>Endless</strong> Varieties of books & magazines</p>
                    </div>
                    <div class="panel-footer">
                        <h3>Rs 1000/=</h3>
                        <h4>per month</h4>
                        <button class="btn btn-lg">Sign Up</button>
                    </div>
                </div>      
            </div>       
            <div class="col-sm-4 col-xs-12">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h1>Premium</h1>
                    </div>
                    <div class="panel-body">
                        <p><strong>Life time </strong> Membership</p>
                        <p><strong>Unlimited books</strong> at a time</p>
                        <p><strong>24/7</strong> Study room / Computer lab facilities</p>
                        <p><strong>Free</strong> Guidance</p>
                        <p><strong>Endless</strong> Varieties of books & magazines</p>
                    </div>
                    <div class="panel-footer">
                        <h3>Rs 2000/=</h3>
                        <h4>per month</h4>
                        <button class="btn btn-lg">Sign Up</button>
                    </div>
                </div>      
            </div>    
        </div>
    </div>

    <!-- Container (Contact Section) -->
    <div id="contact" class="container-fluid bg-grey">
        <h2 class="text-center">CONTACT</h2>
        <div class="row">
            <div class="col-sm-5">
                <p>Contact us and we'll get back to you within 24 hours.</p>
                <p><span class="glyphicon glyphicon-map-marker"></span> Colombo, SL</p>
                <p><span class="glyphicon glyphicon-phone"></span> +94 1515151515</p>
                <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
            </div>
            <div class="col-sm-7 slideanim">
                <div class="row">
                    <div class="col-sm-6 form-group">
                        <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                    </div>
                    <div class="col-sm-6 form-group">
                        <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                    </div>
                </div>
                <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
                <div class="row">
                    <div class="col-sm-12 form-group">
                        <button class="btn btn-default pull-right" type="submit">Send</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Image of location/map -->
    <!--img src="/w3images/map.jpg" class="w3-image w3-greyscale-min" style="width:100%"-->

    <footer class="container-fluid text-center">
        <a href="#myPage" title="To Top">
            <span class="glyphicon glyphicon-chevron-up"></span>
        </a>
        <p>ADM Library made by <a href="" title="Visit w3schools"></a></p>
    </footer>

    <script>
        $(document).ready(function () {
            // Add smooth scrolling to all links in navbar + footer link
            $(".navbar a, footer a[href='#myPage']").on('click', function (event) {
                // Make sure this.hash has a value before overriding default behavior
                if (this.hash !== "") {
                    // Prevent default anchor click behavior
                    event.preventDefault();

                    // Store hash
                    var hash = this.hash;

                    // Using jQuery's animate() method to add smooth page scroll
                    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 900, function () {

                        // Add hash (#) to URL when done scrolling (default click behavior)
                        window.location.hash = hash;
                    });
                } // End if
            });

            $(window).scroll(function () {
                $(".slideanim").each(function () {
                    var pos = $(this).offset().top;

                    var winTop = $(window).scrollTop();
                    if (pos < winTop + 600) {
                        $(this).addClass("slide");
                    }
                });
            });
        });
        function myFunction() {
            alert("yuyuyuyuyuyu");
        }
    </script>

</body>
</html>

