<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Abm.*" %>
<%@page import="Base.*" %>
<%@page session="true"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Committer</title>
</head>
<body bgcolor="#819FF7">
<%
ConexionMySql conexion=new ConexionMySql();

AdministradorABM admin=new AdministradorABM();
if(session.getAttribute("solicitaAbm").equals("AbmCliente")){
	out.println("vino de AbmCliente");
	
	if(session.getAttribute("accion").equals("Alta")){
		Cliente cli=new Cliente(Integer.parseInt(request.getParameter("numeroCliente")),request.getParameter("razonSocial").toString());
		if(admin.darDeAlta(cli, "proyectoweb", "cliente")==1){
			%><script type="text/javascript">alert("Datos cargados con �xito!");
			 document.location=("AbmCliente.jsp");//redireccion 
			
			</script><%
		}		
		
		else{
			
			%><script type="text/javascript">alert("Hubo un problema, intente de nuevo por favor.");
			
			 document.location=("AbmCliente.jsp");
			</script><%		
			
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
			%><script type="text/javascript">alert("Datos borrados con �xito!");
			 document.location=("AbmCliente.jsp");//redireccion 
			
			</script><%
			
		}else{
			%><script type="text/javascript">alert("Los datos no se borraron, intente de nuevo...");
			 document.location=("AbmCliente.jsp");//redireccion 
			
			</script><%
			
		}
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	if(session.getAttribute("accion").equals("Modificacion")){
		out.println("modificacion");
		
	}
	
	
	
	
	
	
}





%>



</body>
</html>