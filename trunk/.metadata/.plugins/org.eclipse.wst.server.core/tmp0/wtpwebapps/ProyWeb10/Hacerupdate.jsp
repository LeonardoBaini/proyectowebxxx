<%@page import="Base.metodosSql"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.util.ArrayList"%>
<%@page session="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#E6E6E6">
<%
try{
if(session.equals(null)){
		response.sendRedirect("index.jsp");
	}



String usuario=session.getAttribute("usuario").toString();
// linea al pedo session.getAttribute("usuario").toString();


session.setAttribute("fechaCarga", request.getParameter("Fecha"));
session.setAttribute("usuario", usuario);
metodosSql metodos=new metodosSql();
String cliente=request.getParameter("cliente");

int dia;

 
//String mes=request.getParameter("mes");
String tipohora=request.getParameter("tipohora");	
String tarea=request.getParameter("tarea");
String subtarea=request.getParameter("subtarea");
double horas=Double.parseDouble(request.getParameter("horas"));


String fecha=request.getParameter("Fecha");
StringTokenizer fechaCompleta=new StringTokenizer(fecha);

int anio=Integer.parseInt(fechaCompleta.nextToken("-"));
int mes=Integer.parseInt(fechaCompleta.nextToken("-"));


int dni=Integer.parseInt(metodos.consultarUnaColumna("select dni from userlogin where usuario = '"+ session.getAttribute("usuario").toString()+"'").get(0));

String departamento=request.getParameter("departamento");
String descripcion=request.getParameter("comentarios");
ArrayList<String>periodo=metodos.consultarUnaColumna("select "+metodos.dameNroTeDoyMes(mes)+" from mesesestado	where usuario ='"+usuario+"' and anio = "+anio);																														
String periodoEstaAboCerr=null;
if(periodo.size()>0){
	periodoEstaAboCerr=periodo.get(0).toString();
	
}else{
	out.println("No tiene periodo creado en la tabla mesesestado solicitele a su administrador que lo abra");/*creale un periodo */
}




/*  ACA VALIDACION SI MES ESTA CERRADO, NO SE PUEDE AGREGAR...............

preguntar en cu�l tabla? 
		C�mo?
				
				select FEBRERO from proyectoweb.mesesestado
				where usuario ='leo' and anio =2012;


SI ESTO D� ABIERTO PUEDE INSERTAR SINO MENSAJITO...



*/
int status=0;

if(!periodoEstaAboCerr.equals("CERRADO")){
	 status=metodos.insertarOmodif("insert INTO registroGral "+
			"(`tarea`, `subtarea`, `descripcion`, `departamento`, `dniPersonal`, `cliente`, `horastrabajadas`,`tipoHora` ,`fecha`)"+
			"VALUES ('"+tarea+"', '"+subtarea+"', '"+descripcion+"', '"+departamento+"', "+dni+", '"+cliente+"', "+horas+", '"+tipohora+"', '"+fecha+"')");
	 metodos.abrirMes(usuario, mes, anio);
	
}
else{
	
	out.println("Usted esta intentando a�adir un registro para un periodo que ya ha sido cerrado por usted mismo, solicitele a un administrador que lo reabra...<br><br><br>");
	
}




if(status==1){
	
	
	session.setAttribute("status", "Ok");
	response.sendRedirect("CargaDiaria.jsp");
	//out.println("Los datos se han guardado correctamente");
	
}else{ 
	out.println("Hay un problema!!!, los datos pudieron no haberse guardado, si el problema persiste contacte al administrador<br><br><br><br>");

	
	
	
}
}catch(Exception e){
	out.println(e.getMessage());
	
}

%>

<a href="MenuPpal.jsp">Volver a men�</a><br><br>
<a href="CargaDiaria.jsp">Volver a cargar datos</a>

</body>
</html>