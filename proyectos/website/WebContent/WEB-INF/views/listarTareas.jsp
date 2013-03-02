<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link href="css/style.css" rel="stylesheet" />
<script src="js/jquery-1.7.2.min.js" type="text/javascript"
	charset="utf-8"></script>
<link href="css/jquery-ui-1.8.20.custom.css" rel="stylesheet" />
<script src="js/jquery-ui-1.8.20.custom.min.js" type="text/javascript"
	charset="utf-8"></script>
<title>Veterinaria - Lista de Tareas asignadas</title>
</head>
<body> 
	<div class="center_content">
		<h1>Lista de Tareas asignadas</h1> <p>
		<form action="verRegistroTarea" method="get">
			<input type="submit" name="btnNuevo" id="btnNuevo" value="Nueva Tarea" />
			<a href="menuCita.jsp">Regresar al Menu</a>
		</form>
		<table border="1">
			<tr>
				<th>Fecha de la Tarea</th>
				<th>Codigo Cita</th>
				<th>Descripcion de la Tarea</th>
				<th>Doctor</th>
				<th>Cliente</th>
				<th>Direccion</th>
				<th>Telefono</th>
				<th>Paciente</th>
				<td>Editar</td>
				<td>Eliminar</td>

			</tr>
			
			<c:forEach items="${model.tareas}" var="prod" varStatus="i">
			<tr>
				<td width="100">${prod.fechaCita}</td>
				<td>${prod.codigoCita}</td>
				<td>${prod.descripcionCita}</td>
				<td>${prod.doctorPaterno},${prod.nombreDoctor}</td>
				<td>${prod.apellidoPaterno},${prod.nombresPersona}</td>
				<td>${prod.direccion}</td>
				<td>${prod.telefono}</td>
				<td>${prod.codigoPaciente}</td>
				<td align="center"><a
						href="editarTarea.jsp?idCita=${prod.codigoCita}"> <img
							src="images/editar.jpg" alt="" title="" border="0" /></a></td>
				<td align="center"><a
						href="eliminarTarea.jsp?idCita=${prod.codigoCita}"><img
							src="images/delete.gif" alt="" title="" border="0" /></a></td>
			</tr>
			</c:forEach>
			
		</table>
		</div>
	</body>
</html>