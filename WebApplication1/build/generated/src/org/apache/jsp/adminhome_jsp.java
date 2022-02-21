package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> Admin's Home Page</title>\n");
      out.write("        \n");
      out.write("         <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <title> Hospital Management System </title>\n");
      out.write("\n");
      out.write("    <link rel=\"shortcut icon\" href=\"images/fav.jpg\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/fontawsom-all.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/animate.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" />\n");
      out.write("    \n");
      out.write("    \t<style>\n");
      out.write("            .dropbtn {\n");
      out.write("                background-color: #4CAF50;\n");
      out.write("                color: white;\n");
      out.write("                padding: 16px;\n");
      out.write("                font-size: 16px;\n");
      out.write("                border: none;\n");
      out.write("                     }\n");
      out.write("\n");
      out.write("            .dropdown {\n");
      out.write("                position: relative;\n");
      out.write("                display: inline-block;\n");
      out.write("                      }\n");
      out.write("\n");
      out.write("            .dropdown-content {\n");
      out.write("                display: none;\n");
      out.write("                position: absolute;\n");
      out.write("                background-color: #f1f1f1;\n");
      out.write("                min-width: 160px;\n");
      out.write("                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("                z-index: 1;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("            .dropdown-content a {\n");
      out.write("                color: black;\n");
      out.write("                padding: 12px 16px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                display: block;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("            .dropdown-content a:hover {background-color: #ddd;}\n");
      out.write("\n");
      out.write("            .dropdown:hover .dropdown-content {display: block;}\n");
      out.write("\n");
      out.write("            .dropdown:hover .dropbtn {background-color: #3e8e41;}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("           <!-- ################# Header Starts Here#######################--->\n");
      out.write("    <header>\n");
      out.write("        <div class=\"header-top\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-7 col-md-12 left-item\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li><i class=\"fas fa-envelope-square\"></i> nawalokahospitals@gmail.com</li>\n");
      out.write("                            <li><i class=\"fas fa-phone-square\"></i> +94112 34 54 45</li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-5 d-none d-lg-block right-item\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a><i class=\"fab fa-github\"></i></a></li>\n");
      out.write("                            <li><a><i class=\"fab fa-google-plus-g\"></i></a></li>\n");
      out.write("                            <li> <a><i class=\"fab fa-pinterest-p\"></i></a></li>\n");
      out.write("                            <li><a><i class=\"fab fa-twitter\"></i></a></li>\n");
      out.write("                            <li> <a><i class=\"fab fa-facebook-f\"></i></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"nav-head\" class=\"header-nav\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-3 col-sm-12 nav-img\">\n");
      out.write("                        <img src=\"images/logo.jpg\" alt=\"\">\n");
      out.write("                       <a data-toggle=\"collapse\" data-target=\"#menu\" href=\"#menu\" ><i class=\"fas d-block d-md-none small-menu fa-bars\"></i></a>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"menu\" class=\"col-md-10 d-none d-md-block nav-item\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"adminhome.jsp\">ADMIN HOME</a></li>\n");
      out.write("                            \n");
      out.write("                            <div class=\"dropdown\">\n");
      out.write("                                <li> <a href=\"\"> DOCTOR </a></li><br><br><br><br>\n");
      out.write("                                <div class=\"dropdown-content\">\n");
      out.write("                                    <a href=\"\"> ADD DOCTOR </a>\n");
      out.write("\t\t\t\t    <a href=\"#\"> DOCTOR LIST </a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t   </div>\n");
      out.write("                            \n");
      out.write("                            <div class=\"dropdown\">\n");
      out.write("                                <li> <a href=\"\"> PATIENT </a></li><br><br><br><br>\n");
      out.write("                                <div class=\"dropdown-content\">\n");
      out.write("                                    <a href=\"\"> ADD PATIENT </a>\n");
      out.write("\t\t\t\t    <a href=\"#\"> PATIENT LIST </a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t   </div>\n");
      out.write("                            \n");
      out.write("                            <div class=\"dropdown\">\n");
      out.write("                                <li> <a href=\"\"> APPOINTMENT </a></li><br><br><br><br>\n");
      out.write("                                <div class=\"dropdown-content\">\n");
      out.write("                                    <a href=\"appointment.jsp\"> ADD APPOINTMENT </a>\n");
      out.write("\t\t\t\t    <a href=\"applist.jsp\"> APPOINTMENT LIST </a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t   </div>\n");
      out.write("                            \n");
      out.write("                            <li><a href=\"#\">RECEPTIONIST</a></li>\n");
      out.write("                           \n");
      out.write("                           <div class=\"dropdown\">\n");
      out.write("                               <li> <a href=\"index.jsp\">LOGOUT</a></li><br><br><br><br>\n");
      out.write("                                \n");
      out.write("\t\t\t   </div>\n");
      out.write("                           \n");
      out.write("  \n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- ################# Slider Starts Here#######################--->\n");
      out.write("\n");
      out.write("    <div class=\"slider-detail\">\n");
      out.write("\n");
      out.write("        <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("            <ol class=\"carousel-indicators\">\n");
      out.write("                <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"1\"></li>\n");
      out.write("                <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"2\"></li>\n");
      out.write("            </ol>\n");
      out.write("            <div class=\"carousel-inner\">\n");
      out.write("                <div class=\"carousel-item active\">\n");
      out.write("                    <img class=\"d-block w-100\" src=\"images/slider/slider_1.jpg\" alt=\"First slide\">\n");
      out.write("                    <div class=\"carousel-caption d-none d-md-block\">\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("           \n");
      out.write("            </div>\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("    \n");
      out.write("    <script src=\"assets/js/jquery-3.2.1.min.js\"></script>\n");
      out.write("<script src=\"assets/js/popper.min.js\"></script>\n");
      out.write("<script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js\"></script>\n");
      out.write("<script src=\"assets/js/script.js\"></script>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
