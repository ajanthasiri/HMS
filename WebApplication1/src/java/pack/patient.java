/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "patient", urlPatterns = {"/patient"})
public class patient extends HttpServlet {
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
            
           
            
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/web", "root", "");
                
                String query="insert into patient(Patient_Id,Patient_NIC,Patient_Name,Patient_Contact_Number,Address,DOB,Gender,Patient_Chornic_diseases,Blood_Group,Civil_Status,Guardian_Name,Guardian_ContactNo,Guardian_address,Relationship) value(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement pst=con.prepareStatement(query);
                pst.setString(1,request.getParameter("id"));
                pst.setString(2,request.getParameter("nic"));
                pst.setString(3,request.getParameter("name"));
                pst.setString(4,request.getParameter("num"));
                pst.setString(5,request.getParameter("address"));
                pst.setString(6,request.getParameter("dob"));
                pst.setString(7,request.getParameter("gender"));
                pst.setString(8,request.getParameter("dis"));
                pst.setString(9,request.getParameter("blood"));
                pst.setString(10,request.getParameter("civil"));
                pst.setString(11,request.getParameter("guard"));
                pst.setString(12,request.getParameter("gnum"));
                pst.setString(13,request.getParameter("gadd"));
                pst.setString(14,request.getParameter("rela"));
                pst.execute();
            }
            catch(Exception e){
                e.printStackTrace();
            }
            
            response.sendRedirect("http://localhost:8080/WebApplication1/patient.jsp?msg=Patient added successfully");
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