<%@page import="Base.metodosSql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.*" %>
 
 <%@page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<script> 
    function DameCampoFecha(fech){ 
    	var form_element = document.getElementById('fech');
    	return form_element;
    } 
   </script> 
   
 <SCRIPT>
 function compruebaExcesoDeHoras(hs,maxHs){
	 if(hs>=maxhs){
		 if(confirm('ha excedido el l�mite de '+maxhs+' confirma?')){
			 alert('Confirm�');
		 }else{
			 alert('No confirm�');
		 }
		 
	 }
	 
 }
 </SCRIPT>
 
  <SCRIPT>


<SCRIPT>

function Damehs(hs,fecha) { 
	if(hs==null){
		 alert("Ud tiene if 0 horas trabajadas en "+fecha);
	}else{
		alert("Ud tiene else "+hs+" horas trabajadas en "+fecha);
		
	}
    
    
}

</SCRIPT>
<script> 
    function irAconsultaHS(){ 
    	response.sendRedirect("consultaHsTrabajadas.jsp");
    } 
   </script> 
<script>
function Envia(destino){
	CargaDiaria.action=destino;
	CargaDiaria.submit();
}
</script>


<title>CARGA DIARIA DE DATOS</title>

</head>

<body >

<%



/*session.setAttribute("permiso","administrador");
session.setAttribute("usuario","leandro");
session.setAttribute("fechaCarga","2012-11-10");*/






HttpSession sesion=request.getSession();
if(sesion.equals(null)){
	response.sendRedirect("index.jsp");
}



out.println("<body bgcolor=\"#F2EFFB\">"); %>


	<form name="CargaDiaria" action="Hacerupdate.jsp" method="post">

<%

String usuario=session.getAttribute("usuario").toString(); 
String permiso=session.getAttribute("permiso").toString();
String fechaCarga=session.getAttribute("fechaCarga").toString();//toma la fecha del menu, la de hoy por defecto.




		
		
		out.println("Bienvenido "+usuario+"<br>");
			//Comienza la creacion del select Especialidad
		
		
		metodosSql metodos=new metodosSql();
		
		%>
		<div align="right">
		
		
		
		<a>Ingrese aqui su consulta</a><br>
		<a>Use el formato AAAA-MM-DD</a><br>
		<input type="text" id="fech" name=fechaConsulta ><br>
		<input type="button"  value="Check"  OnClick="Envia('consultaHsTrabajadas.jsp')">
		
		
		
		
		</div>
		
		
		
		
		<%
		
		
			String horasDeHoy="0";
			if (metodos.consultarUnaColumna("SELECT sum(horastrabajadas) FROM proyectoweb.registrogral "+
					" where fecha='"+fechaCarga+"' and "+ 
					" dnipersonal=(select dni from proyectoweb.userlogin "+
					" where usuario='"+usuario+"') ;").get(0)==null){
				horasDeHoy="0";
				
			}else{
				horasDeHoy=metodos.consultarUnaColumna("SELECT sum(horastrabajadas) FROM proyectoweb.registrogral "+
						" where fecha='"+fechaCarga+"' and "+ 
						" dnipersonal=(select dni from proyectoweb.userlogin "+
						" where usuario='"+usuario+"') ;").get(0);
			}
			
		out.println("En el dia "+fechaCarga+" usted tiene "+horasDeHoy+" horas trabajadas<br><br>");
		
		

			//----------------------------------fin del select nombre----------------------------------------------------------------------------------------  

			//---------------------------------comienza  select cliente---------------------------------------------------------------------------------
			
			
			out.println("Aqu� puede modificar la fecha si lo desea, o bien use la fecha de hoy por defecto <br>");
			out.println("<input type= text name=" + " Fecha " +" value= "+fechaCarga+"> mantenga el formato AAAA-MM-DD<br>");
			
			
			
			out.println("Cliente.....");
			ArrayList<String> array2 = new ArrayList<String>();
			
			array2=metodos.consultarUnaColumna("SELECT descripcion from cliente where Inhabilitado= 'NO';");
			array2.add(0,"");
			

			out.println(" <select name=" + " cliente " + " >");

			for (int i = 0; i < array2.size(); i++)

				out.println(" <option value=" + java.net.URLEncoder.encode(array2.get(i), "UTF-8") + ">"
						+ array2.get(i) + "</option>");

			out.println("</select>");
			out.println("<br>");
			

			//---------------------------------comienza  select tipo de hora---------------------------------------------------------------------------------
			out.println("Tipo de hora");
			ArrayList<String> array5 = new ArrayList<String>();
			
			array5=metodos.consultarUnaColumna("SELECT descripcion from tipoHora ");
			array5.add(0,"");

			out.println(" <select name=" + " tipohora " + ">");

			for (int i = 0; i < array5.size(); i++)

				out.println(" <option value=" + array5.get(i) + ">"
						+ array5.get(i) + "</option>");

			out.println("</select>");
			out.println("<br>");

			//---------------------------------comienza  select tipo de Departamento---------------------------------------------------------------------------------
			out.println("Depto.......");
			ArrayList<String> array6 = new ArrayList<String>();
			
			array6=metodos.consultarUnaColumna("SELECT descripcion from departamento where Inhabilitado= 'NO';");
			array6.add(0,"");
			
			out.println(" <select name=" + " departamento " + ">");

			for (int i = 0; i < array6.size(); i++)

				out.println(" <option value=" + java.net.URLEncoder.encode(array6.get(i), "UTF-8") + ">"
						+ array6.get(i) + "</option>");

			out.println("</select>");
			out.println("<br>");

			//---------------------------------comienza  select tipo de Tarea---------------------------------------------------------------------------------
			out.println("Tarea.......");
			ArrayList<String> array7 = new ArrayList<String>();
			
			array7=metodos.consultarUnaColumna("SELECT descripcion from tarea where Inhabilitado= 'NO';");
			array7.add(0,"");
			

			out.println(" <select name=" + " tarea " + ">");

			for (int i = 0; i < array7.size(); i++)

				out.println(" <option value=" + java.net.URLEncoder.encode(array7.get(i), "UTF-8") + ">"
						+ array7.get(i) + "</option>");

			out.println("</select>");
			out.println("<br>");
			
			//---------------------------------comienza  select tipo de SubTarea---------------------------------------------------------------------------------
			out.println("Subtarea....");
			ArrayList<String> array8 = new ArrayList<String>();
			
			array8=metodos.consultarUnaColumna("SELECT descripcion from subtarea where Inhabilitado= 'NO'; ");
			array8.add(0,"");
			

			out.println(" <select name=" + " subtarea " + ">");

			for (int i = 0; i < array8.size(); i++)

				out.println(" <option value=" + java.net.URLEncoder.encode(array8.get(i), "UTF-8") + ">"
						+ array8.get(i) + "</option>");

			out.println("</select>");
			out.println("<br>");
			out.println("<br>");
			
			//------------------------------------------------------------------------
			out.println("<br>Hs utilizadas");

			out.println(" <select name=" + " horas " + ">");

			for (double i = 0; i < 23;i = i + 0.5 )
			
			out.println(" <option value=" + i + ">"	+ i + "</option>");

			out.println("</select>");
			out.println("<br><br><br><br><br><br>");
			
			//--------------------dato adicional--------------------------------------
			
			out.println("<br>Dato adicional:<br>"+
					"<textarea name=comentarios rows=2 cols=50></textarea>"+ 
					"<br>");
			
			
			
		%>
		
		


	
			

		
		<input type="submit" value="Aceptar"/><br><br>
		<a href="MenuPpal.jsp" >Volver a menu</a>
		

	</form>
	

</body>

</html>
