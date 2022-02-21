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
        <title> Doctors List Page</title>
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
    
    <body>
        
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit doctor details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          <form method="post" action="dedit" id="f1">
                   
                <input id="name" type="text" placeholder="Enter Name" class="form-control" name="name">

                <input id="id" type="hidden" placeholder="Enter Doctor ID" class="form-control" name="id">

                <input id="password" type="password" placeholder="Enter Password" class="form-control" name="password">

                <input id="email" type="text" placeholder="Enter Email Address" class="form-control" name="email">

                <input id="age" type="text" placeholder="Enter Age" class="form-control" name="age">

              <input id="salary" type="text" placeholder="Salary" class="form-control" name="salary">

              <input id="qual" type="text" placeholder="Qualifications" class="form-control" name="qual">

              <input id="address" type="text" placeholder="Address" class="form-control" name="address">

              <input id="dept" type="text" placeholder="Specilization" class="form-control" name="dept">
                               
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
                            <li><a href="adminhome.jsp">HOME</a></li>
                            
                             <div class="dropdown">
                                <li> <a href=""> DOCTOR </a></li><br><br><br><br><br>
                                <div class="dropdown-content">
                                    <a href="doctor.jsp"> ADD DOCTOR </a>
				    <a href="doclist.jsp"> DOCTOR LIST </a>
				</div>
			   </div>
                            
                             <div class="dropdown">
                                <li> <a href=""> APPOINTMENT </a></li><br><br><br><br><br>
                                <div class="dropdown-content">
				    <a href="adminapp.jsp"> APPOINTMENT LIST </a>
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
               <div class="page-nav no-margin row" style="background-image:url('images/admin.jpg')">
                   <div class="container">
                       <div class="row">
                           <h2>Doctors</h2>
                           <input class="form-control" type="text" id="myInput" onkeyup="myFunction()" placeholder="Search By Specialization" title="Type ID">
                           <div class="tableFixHead">
                           <table class="table" border="1" id="myTable" style="background-color:rgba(255,255,255,0.8);">
                               <thead>
                                   <tr>
                                    <th style="background-color:white;">Doctor ID</th>
                                    <th style="background-color:white;">Doctor Name</th>
                                    <th style="background-color:white;">Email</th>
                                    <th style="background-color:white;">Password</th>
                                    <th style="background-color:white;">Gender</th>
                                    <th style="background-color:white;">Age</th>
                                    <th style="background-color:white;">Specialization</th>
                                    <th style="background-color:white;">Address</th>
                                    <th style="background-color:white;">Salary</th>
                                    <th style="background-color:white;">Qualifications</th>
                                    <th style="background-color:white;">Registration Date</th>
                                    <th style="background-color:white;"></th>
                                    <th style="background-color:white;"></th>
                                   </tr>
                               </thead>
                               <tbody>
                                
                              <%
                                try{
                                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/web", "root", "");;
                                statement=connection.createStatement();
                                String sql ="select * from doctor";
                                resultSet = statement.executeQuery(sql);
                                while(resultSet.next()){
                                %>
                                <tr>
                                <td><%=resultSet.getString("Doctor_Id") %></td>
                                <td><%=resultSet.getString("Doctor_Name") %></td>
                                <td><%=resultSet.getString("Doctor_Email") %></td>
                                <td><%=resultSet.getString("password") %></td>
                                <td><%=resultSet.getString("Gender") %></td>
                                <td><%=resultSet.getString("Age") %></td>
                                <td><%=resultSet.getString("specialization") %></td>
                                <td><%=resultSet.getString("Address") %></td>
                                <td><%=resultSet.getString("Salary") %></td>
                                <td><%=resultSet.getString("Qualfications") %></td>
                                <td><%=resultSet.getString("Registration_date") %></td>
                                <td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" onclick="document.getElementById('id').value='<%=resultSet.getString("Doctor_Id") %>';document.getElementById('name').value='<%=resultSet.getString("Doctor_Name") %>';document.getElementById('email').value='<%=resultSet.getString("Doctor_Email") %>';document.getElementById('password').value='<%=resultSet.getString("password") %>';document.getElementById('age').value='<%=resultSet.getString("age") %>';document.getElementById('dept').value='<%=resultSet.getString("specialization") %>';document.getElementById('address').value='<%=resultSet.getString("Address") %>';document.getElementById('salary').value='<%=resultSet.getString("Salary") %>';document.getElementById('qual').value='<%=resultSet.getString("Qualfications") %>';">
                                    Edit
                                  </button></td>
                                <td><form id="f2" action="docdlt" method="post"> <input type="hidden" name="id" value="<%=resultSet.getString("Doctor_Id") %>"> <input style="float:right;" class="btn btn-success btn-appointment" type="submit" value="Delete"> </form></td>
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
<script>
    function myFunction() {
          var input, filter, table, tr, td, i, txtValue;
          input = document.getElementById("myInput");
          filter = input.value.toUpperCase();
          table = document.getElementById("myTable");
          tr = table.getElementsByTagName("tr");
          for (i = 0; i < tr.length; i++) {
               td = tr[i].getElementsByTagName("td")[6];
               if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                    } else {
                    tr[i].style.display = "none";
                    }
               }       
          }
     }

     
</script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>    
<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
<script src="assets/js/script.js"></script>
   
</html>
