/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.28
 * Generated at: 2012-12-30 23:08:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.net.URLDecoder;
import Abm.*;
import Base.*;

public final class AbmCommitter_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Committer</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"#819FF7\">\r\n");

ConexionMySql conexion=new ConexionMySql();

AdministradorABM admin=new AdministradorABM();
if(session.getAttribute("solicitaAbm").equals("AbmCliente")){
	out.println("vino de AbmCliente");
	
	if(session.getAttribute("accion").equals("Alta")){
		Cliente cli=new Cliente(Integer.parseInt(request.getParameter("numeroCliente")),request.getParameter("razonSocial").toString());
		if(admin.darDeAlta(cli, "proyectoweb", "cliente")==1){
			
      out.write("<script type=\"text/javascript\">alert(\"Datos cargados con éxito!\");\r\n");
      out.write("\t\t\t document.location=(\"AbmCliente.jsp\");//redireccion \r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t</script>");

		}		
		
		else{
			
			
      out.write("<script type=\"text/javascript\">alert(\"Hubo un problema, intente de nuevo por favor.\");\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t document.location=(\"AbmCliente.jsp\");\r\n");
      out.write("\t\t\t</script>");
		
			
		}
		
		
	}
	
	
	
	
	
	//si viene de baja hacer..
	if(session.getAttribute("accion").equals("Baja")){
		int statusBajaCliente=0;
		AdministradorABM adminBaja=new AdministradorABM();
		metodosSql metodos=new metodosSql();
		out.println("baja");
		
		String cliente=URLDecoder.decode(request.getParameter("clientes"), "UTF-8");
		String sentencia="Select idCliente from cliente where descripcion='"+cliente+"';";
		int idCliente=Integer.parseInt(metodos.consultarUnaColumna(sentencia).get(0));
		Cliente clienteDelete=new Cliente(idCliente,cliente);
		statusBajaCliente= adminBaja.darDeBaja(clienteDelete,conexion.getBase(),"cliente");
		if(statusBajaCliente==1){
			
      out.write("<script type=\"text/javascript\">alert(\"Datos borrados con éxito!\");\r\n");
      out.write("\t\t\t document.location=(\"AbmCliente.jsp\");//redireccion \r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t</script>");

			
		}else{
			
      out.write("<script type=\"text/javascript\">alert(\"Los datos no se borraron, intente de nuevo...\");\r\n");
      out.write("\t\t\t document.location=(\"AbmCliente.jsp\");//redireccion \r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t</script>");

			
		}
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	if(session.getAttribute("accion").equals("Modificacion")){
		out.println("modificacion");
		
	}
	
	
	
	
	
	
}






      out.write("\r\n");
      out.write("\r\n");
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
