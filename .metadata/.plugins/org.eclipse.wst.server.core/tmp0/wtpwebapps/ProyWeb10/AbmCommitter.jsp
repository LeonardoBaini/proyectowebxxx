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

if(session.getAttribute("solicitaAbm").equals("AbmCliente")){//inicio si viene de abmcliente
	//out.println("vino de AbmCliente");
	
	if(session.getAttribute("accion").equals("Alta")){//inicio si es para alta cliente
		
		Cliente cli=new Cliente(Integer.parseInt(request.getParameter("numeroCliente")),request.getParameter("razonSocial").toString());
		if(admin.darDeAlta(cli, "proyectoweb", "cliente")==1){
			%><script type="text/javascript">alert("Datos cargados con �xito!");
			 document.location=("MenuABM.jsp");//redireccion 
			
			</script><%
		}		
		
		else{
			
			%><script type="text/javascript">alert("Hubo un problema, intente de nuevo por favor.");
			
			 document.location=("MenuABM.jsp");
			</script><%		
			
		}
		
		
	}//fin si es para alta cliente
	
	
	
	
	
	//si viene de baja hacer..
	if(session.getAttribute("accion").equals("Baja")){//inicio si es para baja cliente
		int statusBajaCliente=0;
		AdministradorABM adminBaja=new AdministradorABM();
		metodosSql metodos=new metodosSql();
		out.println("baja");
		
		String cliente=URLDecoder.decode(request.getParameter("clientes"), "UTF-8");
		
		
		
		
		String sentencia="Select idCliente from cliente where descripcion='"+cliente+"' and inHabilitado='NO';";
		int idCliente=Integer.parseInt(metodos.consultarUnaColumna(sentencia).get(0));
		Cliente clienteDelete=new Cliente(idCliente,cliente);
		statusBajaCliente= adminBaja.InHabilitar(clienteDelete,conexion.getBase(),"cliente");
		if(statusBajaCliente==1){
			%><script type="text/javascript">alert("Datos borrados con �xito!");
			 document.location=("MenuABM.jsp");//redireccion 
			
			</script><%
			
		}else{
			%><script type="text/javascript">alert("Los datos no se borraron, intente de nuevo...");
			 document.location=("MenuABM.jsp");//redireccion 
			
			</script><%
			
		}
		
		
		
	}//fin si es para baja cliente	
	
	if(session.getAttribute("accion").equals("Modificacion")){//inicio si es para modificacion cliente
		out.println("modificacion");
	try{
		int statusModifCliente=0;
		AdministradorABM adminModif=new AdministradorABM();
		metodosSql metodos=new metodosSql();
		
		
		
		String cliente=URLDecoder.decode(request.getParameter("clientes"), "UTF-8");
		
		
		
		
		
		int idCliente=Integer.parseInt(metodos.consultarUnaColumna("SELECT max(idCliente) FROM proyectoweb.cliente;").get(0));
		idCliente++;
		int idClienteDel=Integer.parseInt(metodos.consultarUnaColumna("SELECT idCliente FROM proyectoweb.cliente where descripcion= '"+cliente+"' and inHabilitado='NO';").get(0));
		String nuevaDescripcionCliente=request.getParameter("nuevoValor");
		Cliente nuevoCli=new Cliente(idCliente,nuevaDescripcionCliente);
		Cliente clienteDelete=new Cliente(idClienteDel,cliente);
		
		statusModifCliente= adminModif.InHabilitar(clienteDelete,conexion.getBase(),"cliente");
		statusModifCliente=statusModifCliente+adminModif.darDeAlta(nuevoCli,conexion.getBase(), "cliente");
		
		if(statusModifCliente==2){
			%><script type="text/javascript">alert("Datos modificados con �xito!");
			 document.location=("MenuABM.jsp");//redireccion 
			
			</script><%
			
		}else{
			%><script type="text/javascript">alert("Los datos no se modificaron, intente de nuevo...");
			 document.location=("MenuABM.jsp");//redireccion 
			
			</script><%
			
		}
	}catch(Exception e){
		out.println("Error, compruebe los datos suministrados e intente de nuevo... :\n "+e.getMessage());
		
		%><a href="MenuABM.jsp" >Volver a ABM</a><%
		
	}
	
	
	
	
	
	
		
	}//fin si es para modificacion de cliente
	
	
	
	
	
	
}//fin si viene de abmcliente





%>



</body>
</html>