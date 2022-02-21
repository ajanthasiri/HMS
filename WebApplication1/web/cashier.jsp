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
        <title> Cashier Page </title>
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
            
            h5{
                color:black;
            }
            h2{
                color:black;
            }
            h1{
                color:black;
            }
            p{
                color:black;
            }
        </style>
    </head>
    
    <body style="background-image:url('images/1.jpg');background-repeat: no-repeat;background-size: 100%;">
        <header>
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-12 left-item">
                        <ul>
                            <li><i class="fas fa-envelope-square"></i> nawaloka@slt.lk</li>
                            <li><i class="fas fa-phone-square"></i> +9411 5577 111</li>
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
                            <li style="float:right;"><a href="index.jsp">LOGOUT</a></li>
                            
  
                        </ul>
                    </div>
                </div>

            </div>
        </div>

    </header>


    
    <!-- ################# Our Team Starts Here#######################--->

      <!--  ************************* Page Title Starts Here ************************** -->
               <div class="page-nav no-margin row" style="background-color:rgba(255,255,255,0.7);">
                   <div class="container">
                       <div class="row">
                           <h1 style="margin:auto;">Issue Bill</h1>
                           
                       </div>
                   </div>
               </div>
       
         <!-- ######## Page  Title End ####### -->
    
  <div class="inner-layer" style="background-color:rgba(255,255,255,0.7);"><br>
          <div class="container">
            <div class="row no-margin">
                <div class="col-sm-7">
                    <div class="content">
                        <h2>Best Of Our Services</h2>
                        <p>If you've been referred to a specialist through the Doc Channel Service, booking your appointment online is easy, safe and secure. </p>
                        <h2>For Help Call : +9411 5577 111 </h2>
                    </div>
                </div>
                
                            
                        
                <div class="col-sm-5">
                    <div class="form-data">
                        <div class="form-head">
                            <h2>Patient Bill</h2>
                        </div>
                        
                        <%  String docfee="";
                            String hospital="";
                            String tcharge="";
                            String total="";
                            String discount="";
                            String net="";
                            String rprice="";
                            String bal="";
                            String appid="";
                            String appdate="";
                            String apptime="";
                            String patid="";
                            String docid="";
                            String age="";
                                if(!(request.getParameter("docfee")==null)){ 
                                    docfee=request.getParameter("docfee"); 
                                }if(!(request.getParameter("hospital")==null)){ 
                                    hospital=request.getParameter("hospital"); 
                                }if(!(request.getParameter("tcharge")==null)){ 
                                    tcharge=request.getParameter("tcharge"); 
                                }if(!(request.getParameter("total")==null)){ 
                                    total=request.getParameter("total"); 
                                }if(!(request.getParameter("discount")==null)){ 
                                    discount=request.getParameter("discount"); 
                                }if(!(request.getParameter("net")==null)){ 
                                    net=request.getParameter("net"); 
                                }if(!(request.getParameter("rprice")==null)){ 
                                    rprice=request.getParameter("rprice"); 
                                }if(!(request.getParameter("bal")==null)){ 
                                    bal=request.getParameter("bal"); 
                                }
                                if(!(request.getParameter("appid")==null)){ 
                                    appid=request.getParameter("appid"); 
                                }if(!(request.getParameter("appdate")==null)){ 
                                    appdate=request.getParameter("appdate"); 
                                }if(!(request.getParameter("apptime")==null)){ 
                                    apptime=request.getParameter("apptime"); 
                                }if(!(request.getParameter("docid")==null)){ 
                                    docid=request.getParameter("docid"); 
                                }if(!(request.getParameter("patid")==null)){ 
                                    patid=request.getParameter("patid"); 
                                }if(!(request.getParameter("age")==null)){ 
                                    age=request.getParameter("age"); 
                                }
                                
                                
                                
                            %>
                        
                        
                        <form action="cashier" method="post">
                        <div class="form-body">
                            <div class="row form-row">
                                <h5>Enter Appointment ID : </h5><input name="appid" type="text" placeholder="Enter Appointment ID" class="form-control" value="<%= appid %>" required="required">
                            </div>
                            <div class="row form-row">
                              <h5>Appointment Date : </h5><input name="appdate" type="text" placeholder="Appointment Date" class="form-control" value="<%= appdate %>">
                            </div>
                            <div class="row form-row">
                              <h5>Appointment Time : </h5><input name="apptime" type="text" placeholder="Appointment Time" class="form-control" value="<%= apptime %>">
                            </div>
                            <div class="row form-row">
                              <h5>Patient Name : </h5><input name="patname" type="text" placeholder="Patient Name" class="form-control" value="<%= patid %>">
                            </div>
                            <div class="row form-row">
                              <h5>Patient age : </h5><input name="age" type="text" placeholder="Patient Age" class="form-control" value="<%= age %>">
                            </div>
                             
                            <div class="row form-row">
                              <h5>Doctor Name : </h5><input name="docname" type="text" placeholder="Doctor Name" class="form-control" value="<%= docid %>">
                            </div>
                            
                            

                             <div class="row form-row">
                                <div class="col-sm-6">
                                   <h5>Enter Doctor Fee : </h5><input name="docfee" type="text" placeholder="Enter Doctor Fee" class="form-control" value="<%= docfee %>" required="required">
                                </div>
                                
                            </div>
                             <div class="row form-row">
                                <div class="col-sm-6">
                                   <h5>Enter Hospital Fee : </h5><input name="hospital" type="text" placeholder="Enter Hospital Fee" class="form-control" value="<%= hospital %>" required="required">
                                </div>
                                
                            </div>
                            <div class="row form-row">
                                <div class="col-sm-6">
                                   <h5>Enter Theater Charge : </h5><input name="tcharge" type="text" placeholder="Enter Theater Charge" class="form-control" value="<%= tcharge %>" required="required">
                                </div>
                                
                            </div>
                            <div class="row form-row">
                                <div class="col-sm-6">
                                   <h5>Total : </h5><input name="total" type="text" placeholder="Total" class="form-control" value="<%= total %>">
                                </div>
                                
                            </div>
                            <div class="row form-row">
                                <div class="col-sm-6">
                                   <h5>Enter Discount : </h5><input name="discount" type="text" placeholder="Enter Discount" class="form-control" value="<%= discount %>" required="required">
                                </div>
                                
                            </div>
                            <div class="row form-row">
                                <div class="col-sm-6">
                                   <h5>Net Price : </h5><input name="net" type="text" placeholder="Net Price" class="form-control" value="<%= net %>">
                                </div>
                                
                            </div>
                            <div class="row form-row">
                                <div class="col-sm-6">
                                   <h5>Enter Receive Price : </h5><input name="rprice" type="text" placeholder="Enter Receive Price" class="form-control" value="<%= rprice %>" required="required">
                                </div>
                                
                            </div>
                            <div class="row form-row">
                                <div class="col-sm-6">
                                   <h5>Balance : </h5><input name="bal" type="text" placeholder="Balance" class="form-control" value="<%= bal %>">
                                </div>
                                
                            </div>

                             <div class="row form-row">
                               <button type="submit" class="btn btn-success btn-appointment">
                                 Submit
                               </button>
                               
                               
                            </div><br>
                            
                        
                        </div>
                        </form>
                        <div class="row form-row">
                               <input value="Print" class="btn btn-success btn-appointment" onClick="window.print()">
                               
                               
                            </div><br>
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
