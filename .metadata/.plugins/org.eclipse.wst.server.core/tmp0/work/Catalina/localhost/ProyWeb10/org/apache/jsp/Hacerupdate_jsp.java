/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.28
 * Generated at: 2013-02-03 23:42:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Base.metodosSql;
import java.util.StringTokenizer;
import java.util.ArrayList;
import java.util.*;
import java.net.URLDecoder;

public final class Hacerupdate_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"#E6E6E6\">\r\n");

try{
if(session.equals(null)){
		response.sendRedirect("index.jsp");
	}




String usuario=session.getAttribute("usuario").toString();
// linea al pedo session.getAttribute("usuario").toString();


session.setAttribute("fechaCarga", request.getParameter("Fecha"));
session.setAttribute("usuario", usuario);
metodosSql metodos=new metodosSql();
//String clienteSindeco=request.getParameter("cliente");
String cliente=URLDecoder.decode(request.getParameter("cliente"), "UTF-8");//request.getParameter("cliente");

int dia;

 
//String mes=request.getParameter("mes");
int idRegistroGral=0;
if(session.getAttribute("nroRegistro")!=null){
	idRegistroGral=Integer.parseInt(session.getAttribute("nroRegistro").toString());
}

String tipohora=request.getParameter("tipohora");	
String tarea=URLDecoder.decode(request.getParameter("tarea"), "UTF-8");//request.getParameter("tarea");
String subtarea=URLDecoder.decode(request.getParameter("subtarea"), "UTF-8");//request.getParameter("subtarea");
double horas=Double.parseDouble(request.getParameter("horas"));


String fecha=request.getParameter("Fecha");
StringTokenizer fechaCompleta=new StringTokenizer(fecha);

int anio=Integer.parseInt(fechaCompleta.nextToken("-"));
int mes=Integer.parseInt(fechaCompleta.nextToken("-"));


int dni=Integer.parseInt(metodos.consultarUnaColumna("select dni from userlogin where usuario = '"+ session.getAttribute("usuario").toString()+"'").get(0));
//String cliente=URLDecoder.decode(request.getParameter("clientes"), "UTF-8");
String departamento=URLDecoder.decode(request.getParameter("departamento"),"UTF-8");
String descripcion=request.getParameter("comentarios");
ArrayList<String>periodo=metodos.consultarUnaColumna("select "+metodos.dameNroTeDoyMes(mes)+" from mesesestado	where usuario ='"+usuario+"' and anio = "+anio);																														
String periodoEstaAboCerr=null;
if(periodo.size()>0){
	periodoEstaAboCerr=periodo.get(0).toString();
	
}else{
	out.println("No tiene periodo creado en la tabla mesesestado solicitele a su administrador que lo abra");/*creale un periodo */
}




/*  ACA VALIDACION SI MES ESTA CERRADO, NO SE PUEDE AGREGAR...............

preguntar en cuál tabla? 
		Cómo?
				
				select FEBRERO from proyectoweb.mesesestado
				where usuario ='leo' and anio =2012;


SI ESTO DÁ ABIERTO PUEDE INSERTAR SINO MENSAJITO...



*/
int status=0;

if(!periodoEstaAboCerr.equals("CERRADO")){//si el periodo esta abierto
	
	
	if(session.getAttribute("esEdicion")!=null){//si es para editar entre aquí
		if(session.getAttribute("esEdicion").equals("SI")){
			//solo puede actualizar sus propios registros...
			
		status=metodos.insertarOmodif("UPDATE `proyectoweb`.`registrogral` SET `tarea`='"+tarea+"', `subtarea`='"+subtarea+"', `descripcion`='"+descripcion+"', `departamento`='"+departamento+"',"+
				"`cliente`='"+cliente+"', `horastrabajadas`="+horas+", `tipohora`='"+tipohora+"', `fecha`='"+fecha+"' WHERE `idregistroGral`='"+idRegistroGral+"' and dniPersonal= '"+dni+"';");


			session.setAttribute("esEdicion", "NO");
			if(status==1){
				out.println("Datos cargados con éxito");
				
			}else{
				out.println("Hubo un problema, no se cargaron los datos");
			}
			
			
		}
	}
	else{// si es un registro nuevo entre aquí
	 status=metodos.insertarOmodif("insert INTO registroGral "+
			"(`tarea`, `subtarea`, `descripcion`, `departamento`, `dniPersonal`, `cliente`, `horastrabajadas`,`tipoHora` ,`fecha`)"+
			"VALUES ('"+tarea+"', '"+subtarea+"', '"+descripcion+"', '"+departamento+"', "+dni+", '"+cliente+"', "+horas+", '"+tipohora+"', '"+fecha+"')");
	 metodos.abrirMes(usuario, mes, anio);
	}
	
}
else{
	
	out.println("Usted esta intentando añadir un registro para un periodo que ya ha sido cerrado por usted mismo, solicitele a un administrador que lo reabra...<br><br><br>");
	
}




if(status==1){
	
	
	session.setAttribute("status", "Ok");
	
	//out.println("Los datos se han guardado correctamente");
	
}else{ 
	out.println("Hay un problema!!!, los datos pudieron no haberse guardado, si el problema persiste contacte al administrador<br><br><br><br>");

	
	
	
}
}catch(Exception e){
	out.println(e.getMessage());
	
}



      out.write("\r\n");
      out.write("\r\n");
      out.write("<a href=\"MenuPpal.jsp\">Volver a menú</a><br><br>\r\n");
      out.write("<a href=\"Tabla.jsp\">Volver a tabla</a><br><br>\r\n");
      out.write("<a href=\"CargaDiaria.jsp\">Volver a cargar datos</a>\r\n");
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
