/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.28
 * Generated at: 2012-12-30 22:30:15 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.awt.Choice;
import javax.swing.JOptionPane;
import Base.metodosSql;
import java.util.StringTokenizer;

public final class CerrarMes_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Cerrar mes</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"#E6E6E6\">\r\n");
      out.write("\r\n");
      out.write("\t");

	
	
		String usuario = null;
		if (session.getAttribute("usuario") != null) {
			usuario = session.getAttribute("usuario").toString();
			out.println("Usuario: " + usuario);

		} else {
			out.println("No hay sesion iniciada");
			response.sendRedirect("index.jsp");
		}
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t");

		String mesString;
	String anio;

		mesString=request.getParameter("meses");
		anio=request.getParameter("anio");
		
		out.println("El mes elegido para cerrar es el nro : " + mesString);
		//session.getAttribute("usuario");
		int estado = 0;
		int estado2=0;
		metodosSql metodos = new metodosSql();
		String dni=null;
		if(usuario!=null){
		 dni = metodos.consultarUnaColumna("select dni from userlogin where usuario= '"+usuario+"' ").get(0);
		 
		}

		if (mesString.length() < 2) {//formatear para sql
			mesString = "0" + mesString;
		}

		
		if(dni!=null){
		estado = metodos.cerrarMes(usuario,Integer.parseInt(mesString),Integer.parseInt(anio));
		
		/*("UPDATE `proyectoweb`.`registrogral`"
						+ " SET `estado`='CERRADO' WHERE dnipersonal= "
						+ dni
						+ " and "
						+ metodos.damePeriodo(Integer.parseInt(mesString),
								Integer.parseInt(metodos.dameAnio()),
								"fecha"));*/
		
		
		}

		
		
		
	
      out.write("\r\n");
      out.write("\t<form name=\"test\" action=\"QueMesCierra.jsp\">\r\n");
      out.write("\t\t<input type=\"hidden\" value=");
      out.print(estado);
      out.write(" name=\"estado\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<!--es un auto submit -->\r\n");
      out.write("\r\n");
      out.write("\t\t<SCRIPT>\r\n");
      out.write("\t\t\tLANGUAGE = \"JavaScript\" > setTimeout('document.test.submit()', 10);\r\n");
      out.write("\t\t</SCRIPT>\r\n");
      out.write("\t</form>\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
