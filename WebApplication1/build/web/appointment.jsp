<%-- 
    Document   : appointment
    Created on : Mar 20, 2021, 8:29:53 PM
    Author     : Ganindu Samarajeewa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Appointment Page</title>
         <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Hospital Management System </title>

    <link rel="shortcut icon" href="images/fav.jpg">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/fontawsom-all.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    
    <style>
            .dropbtn {
                background-color: #4CAF50;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
                     }

            .dropdown {
                position: relative;
                display: inline-block;
                      }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f1f1f1;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
                        }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                }

            .dropdown-content a:hover {background-color: #7be63e;}

            .dropdown:hover .dropdown-content {display: block;}

            .dropdown:hover .dropbtn {background-color: #3e8e41;}
        </style>
    </head>
    
    <body style="background-image:url('images/rec.jpg')">
        <header>
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-12 left-item">
                        <ul>
                            <li><i class="fas fa-envelope-square"></i>  nawaloka@slt.lk</li>
                            <li><i class="fas fa-phone-square"></i> +9411 55 77 111</li>
                        </ul>
                    </div>
                    <div class="col-lg-5 d-none d-lg-block right-item">
                        <ul>
                            <li><a><i class="fab fa-github"></i></a></li>
                            <li><a><i class="fab fa-google-plus-g"></i></a></li>
                            <li> <a><i class="fab fa-pinterest-p"></i></a></li>
                            <li><a><i class="fab fa-twitter"></i></a></li>
                            <li> <a><i class="fab fa-facebook-f"></i></a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <div id="nav-head" class="header-nav">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-12 nav-img">
                        <img src="images/nawaloka-hospital.jpg" alt="">
                       <a data-toggle="collapse" data-target="#menu" href="#menu" ><i class="fas d-block d-md-none small-menu fa-bars"></i></a>
                    </div>
                    <div id="menu" class="col-md-9 d-none d-md-block nav-item">
                        <ul>
                            
                             <div class="dropdown">
                                <li> <a href=""> PRESCRIPTIONS </a></li><br><br><br><br><br>
                                <div class="dropdown-content">
                                    <a href="pres.jsp"> ADD PRESCRIPTION </a>
				    <a href="preslist.jsp"> PRESCRIPTION LIST </a>
				</div>
			   </div>
                             <div class="dropdown">
                                <li> <a href=""> PATIENT </a></li><br><br><br><br><br>
                                <div class="dropdown-content">
                                    <a href="patient.jsp"> ADD PATIENT </a>
				    <a href="patlist.jsp"> PATIENT LIST </a>
				</div>
			   </div>
                            <div class="dropdown">
                                <li> <a href=""> WARD MANAGEMENT </a></li><br><br><br><br><br>
                                <div class="dropdown-content">
                                    <a href="patadmit.jsp"> ADMIT PATIENT </a>
				    <a href="admitlist.jsp">ADMITTED PATIENT LIST </a>
				</div>
			   </div>
                             <div class="dropdown">
                                <li> <a href=""> APPOINTMENT </a></li><br><br><br><br><br>
                                <div class="dropdown-content">
                                    <a href="appointment.jsp"> ADD APPOINTMENT </a>
				    <a href="applist.jsp"> APPOINTMENT LIST </a>
				</div>
			    </div>
                            <li style="float:right;"> <a href="index.jsp"> LOGOUT </a></li>
                            
                        </ul>
                    </div>
                </div>

            </div>
        </div>

    </header>

        <br><br>
    
    <!-- ################# Our Team Starts Here#######################--->

      <!--  ************************* Page Title Starts Here ************************** -->
               <div class="page-nav no-margin row">
                   <div class="container">
                       <div class="row">
                           <h2 style="color:white;">ADD APPOINTMENT DETAILS FORM</h2><br>
                           <%  String m1="";
                                if(!(request.getParameter("msg")==null)){ 
                                    m1=request.getParameter("msg"); 
                                }
                            %>
                            
                            <%   if(m1.equals("Appointment added successfully")){ %>
                                    <h3 style="color:white;margin:auto;"><%= request.getParameter("msg") %></h3>
                               
                               <% } %>
                       </div>
                   </div>
               </div>
       
         <!-- ######## Page  Title End ####### -->
    
  <div class="inner-layer" style="background-color:rgba(255,255,255,0.7);">
          <div class="container"><br>
            <div class="row no-margin">
                <div class="col-sm-7">
                    <div class="content">
                        <h1>Best Of Our Services</h1>
                        <p>If you've been referred to a specialist through the Doc Channel Service, booking your appointment online is easy, safe and secure. </p>
                        <h2>For Help Call : +9411 55 77 111 </h2><br><br><br><br>
                        
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="form-data">
                        <div class="form-head">
                            <h2>Patient Appointment</h2>
                        </div>
                        <form action="app" method="post">
                        <div class="form-body">
                            <div class="row form-row">
                              <input name="patid" type="text" placeholder="Enter Patient ID" class="form-control" required="required">
                            </div>
                             
                            <div class="row form-row">
                              <input name="docid" type="text" placeholder="Enter Doctor ID" class="form-control" required="required">
                            </div>              
                             <div class="row form-row">
                              <input name="appno" type="text" placeholder="Enter Appointment No" class="form-control" required="required">
                            </div>
                             <div class="row form-row">
                              <input name="btime" type="time" placeholder="Enter Booking Time" class="form-control" required="required">
                            </div>
                           <div class="row form-row">
                              <input name="bdate" id="dat" type="date" placeholder="Enter Booking Date" class="form-control" required="required">
                            </div>
                            <div class="row form-row">
                              <input name="age" type="text" placeholder="Enter Patient Age" class="form-control" required="required">
                            </div>
                            
                            <h6>Address Details</h6>

                             <div class="row form-row">
                                <div class="col-sm-6">
                                   <input name="area" type="text" placeholder="Enter Area" class="form-control" required="required">
                                </div>
                                <div class="col-sm-6">
                                   <input name="city" type="text" placeholder="Enter City" class="form-control" required="required">
                                </div>
                            </div>
                             <div class="row form-row">
                                <div class="col-sm-6">
                                   <input name="state" type="text" placeholder="Enter State" class="form-control" required="required">
                                </div>
                                
                            </div>

                             <div class="row form-row">
                               <button type="submit" class="btn btn-success btn-appointment">
                                 Save An Appointment
                               </button>
                               
                               
                            </div>
                        
                        </div><br>
                        </form>
                    </div>
                </div>
            </div>
          </div>
    </div>
         
         <br>
  
  


    
    </body>
    
<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
<script src="assets/js/script.js"></script>
   
</html>
