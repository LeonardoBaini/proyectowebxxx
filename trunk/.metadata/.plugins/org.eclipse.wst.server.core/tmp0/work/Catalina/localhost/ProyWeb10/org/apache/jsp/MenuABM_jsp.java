/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.28
 * Generated at: 2013-03-10 20:07:40 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class MenuABM_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

String estado; 



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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Menu de ABM</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style/style.css\" /><!-- Para cambiar tema desde un solo archivo -->\r\n");
      out.write('\r');
      out.write('\n');



/*session.setAttribute("permiso", "administrador");//borrar esta linea para asegurar seguridad 
session.setAttribute("usuario", "jorge");
session.setAttribute("contrasenia", "jorge");
*/
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("function dirige(){\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("document.menuABM.accion.value=elijaAbm();\r\n");
      out.write("\r\n");
      out.write("var indice = document.forms.menuABM.objetos.selectedIndex;\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("var valor = document.forms.menuABM.objetos[indice].value; \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("if(valor==\"cliente\"){\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\tdocument.forms.menuABM.action=\"AbmCliente.jsp\";\r\n");
      out.write("\t\r\n");
      out.write("} if(valor==\"tarea\"){\r\n");
      out.write("\tdocument.forms.menuABM.action=\"AbmTarea.jsp\";\r\n");
      out.write("\t\r\n");
      out.write("} if(valor==\"subtarea\"){\r\n");
      out.write("\tdocument.forms.menuABM.action=\"AbmSubTarea.jsp\";\r\n");
      out.write("\r\n");
      out.write("} if(valor==\"departamento\"){\r\n");
      out.write("\tdocument.forms.menuABM.action=\"AbmDepto.jsp\";\r\n");
      out.write("\t\r\n");
      out.write("} if(valor==\"usuario\"){\r\n");
      out.write("\tdocument.forms.menuABM.action=\"AbmUsuario.jsp\";\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("function elijaAbm(){\r\n");
      out.write("\tif(getRadioButtonSelectedValue(document.forms.menuABM.abm)==\"Alta\"){\r\n");
      out.write("\t\treturn \"Alta\";\r\n");
      out.write("\t}\r\n");
      out.write("\tif(getRadioButtonSelectedValue(document.forms.menuABM.abm)==\"Baja\"){\r\n");
      out.write("\t\treturn \"Baja\";\r\n");
      out.write("\t}\r\n");
      out.write("\tif(getRadioButtonSelectedValue(document.forms.menuABM.abm)==\"Modificacion\"){\r\n");
      out.write("\t\treturn \"Modificacion\";\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("function getRadioButtonSelectedValue(ctrl)\r\n");
      out.write("{\r\n");
      out.write("    for(var i=0;i<ctrl.length;i++)\r\n");
      out.write("        if(ctrl[i].checked) return ctrl[i].value;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body  title=\"Aquí puede crear,modificar y eliminar los objetos disponibles en la pestaña desplegable\" bgcolor=\"#E6E6E6\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<h2 align=\"center\"><u>Aquí puede crear,modificar y eliminar los objetos disponibles en la pestaña desplegable</u></h2><br>\r\n");
      out.write(" \r\n");
      out.write("                          \r\n");
      out.write("<br><br>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" <form name=\"menuABM\"  method=\"post\">\r\n");
      out.write(" \r\n");
      out.write(" <input type=\"hidden\" name=\"accion\">\r\n");
      out.write(" \r\n");
      out.write(" <input name=\"abm\" value=\"Alta\" type=\"radio\" CHECKED>Alta<br> \r\n");
      out.write("\r\n");
      out.write(" <input name=\"abm\" value=\"Baja\" type=\"radio\">Baja<br>\r\n");
      out.write(" \r\n");
      out.write(" <input name=\"abm\" value=\"Modificacion\" type=\"radio\">Modificacion<br>\r\n");
      out.write(" \r\n");
      out.write(" <div align=\"left\"><a>Elija el objeto en cuestión</a> <br> <br>  \r\n");
      out.write(" \r\n");
      out.write(" <select name=\"objetos\">\r\n");
      out.write("\t\t\t<option value=\"cliente\">Cliente</option>\r\n");
      out.write("\t\t\t<option value=\"tarea\">Tarea</option>\r\n");
      out.write("\t\t\t<option value=\"subtarea\">Subtarea</option>\r\n");
      out.write("\t\t\t<option value=\"departamento\">Departamento</option>\r\n");
      out.write("\t\t\t<option value=\"usuario\">Usuario</option>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t</select></div>\r\n");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t <br><input type=\"submit\" onclick=\"dirige()\"/>\r\n");
      out.write("\t</form>\r\n");
      out.write("<br>\r\n");
      out.write("<a href=\"MenuPpal.jsp\" >Volver a menu principal</a>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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