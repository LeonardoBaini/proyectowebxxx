/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.28
 * Generated at: 2013-01-21 04:11:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class PRUEBASCRIPTLECTOR_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<form action=\"\" name=\"formu\" id=\"formu\">\r\n");
      out.write("<input type=\"text\" name=\"sobr\" id=\"sobr\">\r\n");
      out.write("\r\n");
String prueba="variable java"; 
String horas="12";
String max ="9.9";
      out.write("\r\n");
      out.write("<SCRIPT>\r\n");
      out.write(" function compruebaExcesoDeHoras( hs, maxhs){\r\n");
      out.write("\t\r\n");
      out.write("\t if(parseFloat(hs) >= parseFloat(maxhs)){\r\n");
      out.write("\t\t if(confirm(\"ha excedido el límite de \"+maxhs+\" horas diarias, confirma?\")){\r\n");
      out.write("\t\t\t alert(\"Confirmó con \"+hs+\" horas \"+\"y max \"+maxhs);\r\n");
      out.write("\t\t }else{\r\n");
      out.write("\t\t\t alert(\"No confirmó\");\r\n");
      out.write("\t\t\t \r\n");
      out.write("\t\t }\r\n");
      out.write("\t\t \r\n");
      out.write("\t }else{\r\n");
      out.write("\t\t alert(\"Datos enviados con \"+hs+\" horas \"+\"y max \"+maxhs);\r\n");
      out.write("\t }\r\n");
      out.write("\t \r\n");
      out.write(" }\r\n");
      out.write(" </SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("function pepe(){\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("alert(document.formu.sobr.value);\r\n");
      out.write("}</script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function saluda(){\r\n");
      out.write("var pepe=document.formu.sobr.value;\r\n");
      out.write("\t<!--'");
      out.print(prueba);
      out.write("';-->\r\n");
      out.write("prompt('Saluda',pepe);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function confirmaJava(){\r\n");
      out.write("\t");
String hola=null;
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\tif(confirm(\"seguro?\")){\r\n");
      out.write("\t\t");
hola="hola";
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t}else{\r\n");
      out.write("\t\t");
hola="Chau";
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\talert('");
      out.print(hola);
      out.write("');\r\n");
      out.write("\t\r\n");
      out.write("}</script>\r\n");
      out.write("<!-- compruebaExcesoDeHoras(\"");
      out.print(horas);
      out.write('"');
      out.write(',');
      out.write('"');
      out.print(max);
      out.write("\") -->\r\n");
      out.write("<input type=\"button\" onclick='confirmaJava()'> \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</form>\r\n");
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
