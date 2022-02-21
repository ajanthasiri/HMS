/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AJANTHA
 */
@WebServlet(name = "docadd", urlPatterns = {"/docadd"})
public class docadd extends HttpServlet {
    private static Connection con;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            if(request.getParameter("password").equals(request.getParameter("rpassword"))){
            String name=request.getParameter("name");
            String id=request.getParameter("id");
            
            String passwordToHash = request.getParameter("password");
            String pss = null;
            try {
                MessageDigest md = MessageDigest.getInstance("MD5");
                md.update(passwordToHash.getBytes());
                byte[] bytes = md.digest();
                StringBuilder sb = new StringBuilder();
                for(int i=0; i< bytes.length ;i++)
                {
                    sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
                }
                pss = sb.toString();
            } 
            catch (NoSuchAlgorithmException e) 
            {
                e.printStackTrace();
            }
            
            String email=request.getParameter("email");
            String gender=request.getParameter("gender");
            String age=request.getParameter("age");
            String salary=request.getParameter("salary");
            String date=request.getParameter("date");
            String qual=request.getParameter("qual");
            String addr=request.getParameter("address");
            String dept=request.getParameter("dept");
            
            /*out.println(name+id+pss+email+gender+age+salary+date+qual+addr+dept);*/
            
            
            
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/web", "root", "");
                
                String query="insert into doctor(Doctor_Id,Doctor_Name,Doctor_Email,password,Gender,Age,specialization,Address,Salary,Qualfications,Registration_date) value(?,?,?,?,?,?,?,?,?,?,?)";
                String query1="insert into users(id,roll,password) value(?,?,?)";
                PreparedStatement pst=con.prepareStatement(query);
                PreparedStatement pst1=con.prepareStatement(query1);
                pst.setString(1,id);
                pst.setString(2,name);
                pst.setString(3,email);
                pst.setString(4,pss);
                pst.setString(5,gender);
                pst.setString(6,age);
                pst.setString(7,dept);
                pst.setString(8,addr);
                pst.setString(9,salary);
                pst.setString(10,qual);
                pst.setString(11,date);
                pst.execute();
                
                pst1.setString(1,id);
                pst1.setString(2,"doctor");
                pst1.setString(3,pss);
                pst1.execute();
            }
            catch(Exception e){
                e.printStackTrace();
            }
            
            response.sendRedirect("http://localhost:8080/WebApplication1/doctor.jsp?msg=Doctor added successfully");
            }
            else{
                response.sendRedirect("http://localhost:8080/WebApplication1/doctor.jsp?msg=Password retype is incorrect");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
