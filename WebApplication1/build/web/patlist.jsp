<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%-- 
    Document   : appointment
    Created on : Mar 20, 2021, 8:29:53 PM
    Author     : Ganindu Samarajeewa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
<style>
      .tableFixHead {
        overflow-y: auto;
        height: 400px;
        margin:auto;
        
      }
      .tableFixHead thead th {
        position: sticky;
        top: 0;
      }
</style>       
  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Patients List Page</title>
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
        
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit patient details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          <form method="post" action="patedit" id="f1">
                   
            <input id="name" type="text" placeholder="Enter Name" class="form-control" name="name">

            <input id="id" type="hidden" placeholder="Enter Patient ID" class="form-control" name="id">

            <input id="num" type="text" placeholder="Enter Contact Number" class="form-control" name="num">

            <input id="address" type="text" placeholder="Enter Address" class="form-control" name="address">

            <input id="dis" type="text" placeholder="Enter Patient Chornic Diseases" class="form-control" name="dis">

          <input id="civil" type="text" placeholder="Enter Civil Status" class="form-control" name="civil">

          <input id="guard" type="text" placeholder="Enter Guardian Name" class="form-control" name="guard">

          <input id="gnum" type="text" placeholder="Enter Guardian ContactNo" class="form-control" name="gnum">

          <input id="gadd" type="text" placeholder="Enter Guardian Address" class="form-control" name="gadd">

          <input id="rela" type="text" placeholder="Enter Relationship" class="form-control" name="rela">
                          
                               
            <button type="submit" type="button" class="btn btn-primary">Save changes</button>    
         </form> 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>        
        
        
        <header>
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-12 left-item">
                        <ul>
                            <li><i class="fas fa-envelope-square"></i> nawaloka@slt.lk </li>
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
<br>

   
    <!-- ################# Our Team Starts Here#######################--->

      <!--  ************************* Page Title Starts Here ************************** -->
               <div class="page-nav no-margin row">
                   <div class="container">
                       <div class="row">
                           <h2 style="color:white;">Patients</h2>
                           <div class="tableFixHead">
                           <table class="table" border="1" style="background-color:rgba(255,255,255,0.8);">
                               <thead>
                                   <tr>
                                    <th style="background-color:white;">Patient ID</th>
                                    <th style="background-color:white;">Patient Name</th>
                                    <th style="background-color:white;">NIC</th>
                                    <th style="background-color:white;">Contact Number</th>
                                    <th style="background-color:white;">Address</th>
                                    <th style="background-color:white;">DOB</th>
                                    <th style="background-color:white;">Gender</th>
                                    <th style="background-color:white;">Diseases</th>
                                    <th style="background-color:white;">Blood Group</th>
                                    <th style="background-color:white;">Civil Status</th>
                                    <th style="background-color:white;">Guardian Name</th>
                                    <th style="background-color:white;">Guardian ContactNo.</th>
                                    <th style="background-color:white;">Guardian Address</th>
                                    <th style="background-color:white;">Relationship</th>
                                    <th style="background-color:white;"></th>
                                    <th style="background-color:white;"></th>
                                   </tr>
                               </thead>
                               <tbody>
                                
                              <%
                                try{
                                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/web", "root", "");;
                                statement=connection.createStatement();
                                String sql ="select * from patient";
                                resultSet = statement.executeQuery(sql);
                                while(resultSet.next()){
                                %>
                                <tr>
                                <td><%=resultSet.getString("Patient_Id") %></td>
                                <td><%=resultSet.getString("Patient_NIC") %></td>
                                <td><%=resultSet.getString("Patient_Name") %></td>
                                <td><%=resultSet.getString("Patient_Contact_Number") %></td>
                                <td><%=resultSet.getString("Address") %></td>
                                <td><%=resultSet.getString("DOB") %></td>
                                <td><%=resultSet.getString("Gender") %></td>
                                <td><%=resultSet.getString("Patient_Chornic_diseases") %></td>
                                <td><%=resultSet.getString("Blood_Group") %></td>
                                <td><%=resultSet.getString("Civil_Status") %></td>
                                <td><%=resultSet.getString("Guardian_Name") %></td>
                                <td><%=resultSet.getString("Guardian_ContactNo") %></td>
                                <td><%=resultSet.getString("Guardian_address") %></td>
                                <td><%=resultSet.getString("Relationship") %></td>
                                <td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" onclick="document.getElementById('id').value='<%=resultSet.getString("Patient_Id") %>';document.getElementById('name').value='<%=resultSet.getString("Patient_Name") %>';document.getElementById('num').value='<%=resultSet.getString("Patient_Contact_Number") %>';document.getElementById('address').value='<%=resultSet.getString("Address") %>';document.getElementById('dis').value='<%=resultSet.getString("Patient_Chornic_diseases") %>';document.getElementById('civil').value='<%=resultSet.getString("Civil_Status") %>';document.getElementById('guard').value='<%=resultSet.getString("Guardian_Name") %>';document.getElementById('gnum').value='<%=resultSet.getString("Guardian_ContactNo") %>';document.getElementById('gadd').value='<%=resultSet.getString("Guardian_address") %>';document.getElementById('rela').value='<%=resultSet.getString("Relationship") %>';">
                                    Edit
                                  </button></td>
                                <td><form id="f2" action="patdlt" method="post"> <input type="hidden" name="id" value="<%=resultSet.getString("Patient_Id") %>"> <input class="btn btn-success btn-appointment" type="submit" value="Delete"> </form></td>
                                </tr>
                                <%
                                }
                                connection.close();
                                } catch (Exception e) {
                                e.printStackTrace();
                                }
                                %>
                               
                               
                               </tbody>
                           </table>
                           </div>
                           
                           
                           
                       </div>
                   </div>
               </div>
       
         <!-- ######## Page  Title End ####### -->
    
  <div class="inner-layer">
          <div class="container">
            <div class="row no-margin">
                
                
            </div>
          </div>
    </div>
         
         <br>

    </body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>    
<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
<script src="assets/js/script.js"></script>
   
</html>
