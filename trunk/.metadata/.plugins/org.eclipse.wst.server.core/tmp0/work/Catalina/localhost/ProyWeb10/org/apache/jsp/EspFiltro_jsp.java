/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.28
 * Generated at: 2013-03-11 00:14:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Base.metodosSql;
import java.util.ArrayList;

public final class EspFiltro_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>EspFiltro</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"#E6E6E6\">\r\n");
      out.write("<form action=\"Tabla.jsp\" method=\"post\">\r\n");

if(session.equals(null)){
	response.sendRedirect("index.jsp");
}


String desde=request.getParameter("Desde");
String hasta=request.getParameter("Hasta");
String filtro=request.getParameter("Filtro");
String criterio="Criterio";
//System.out.println(desde);

out.println( "Esta filtrando desde "+desde+"<br>");
out.println("hasta "+hasta);
out.println(" y debe seleccionar un item de "+filtro+"<br>");


metodosSql metodos = new metodosSql();
out.println("Desde");
ArrayList<String> array = new ArrayList<String>();
if(filtro.equals("dniPersonal")){
	filtro="usuario";
	array = metodos	.consultarUnaColumna("SELECT usuario from userlogin where usuario is not null");
	
}else{

array = metodos	.consultarUnaColumna("SELECT DISTINCT "+filtro+" from registrogral where "+filtro+" is not null");
}
out.println(" <select name=" + criterio + ">");

for (int i = 0; i < array.size(); i++)

	out.println(" <option value=" + array.get(i) + ">"+ array.get(i) + "</option>");

out.println("</select>");

//desde,hasta,filtro vienen de filtroconsulta

      out.write("\r\n");
      out.write("<input type=\"hidden\" value=");
      out.print(desde );
      out.write(" name=\"Desde\">\r\n");
      out.write("<input type=\"hidden\" value=");
      out.print(hasta );
      out.write(" name=\"Hasta\">\r\n");
      out.write("<input type=\"hidden\" value=");
      out.print(filtro);
      out.write(" name=\"Filtro\">\r\n");
      out.write("<input type=\"hidden\" value=");
      out.print(criterio);
      out.write(" name=\"Criterio\">\r\n");
      out.write("<input type=\"submit\" value=\"Aceptar\" />\r\n");
      out.write("</form>\r\n");
      out.write(" <a href=\"MenuPpal.jsp\">Volver al Menú</a><br><br>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else log(t.getMessage(), t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}