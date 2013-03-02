<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consulta de Factura</title>
<style type="text/css">
#gradient-style
{
	font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
	font-size: 12px;
	margin: 45px;
	width: 480px;
	text-align: left;
	border-collapse: collapse;
}
#gradient-style th
{
	font-size: 13px;
	font-weight: normal;
	padding: 8px;
	background: #b9c9fe url('table-images/gradhead.png') repeat-x;
	border-top: 2px solid #d3ddff;
	border-bottom: 1px solid #fff;
	color: #039;
}
#gradient-style td
{
	padding: 8px; 
	border-bottom: 1px solid #fff;
	color: #669;
	border-top: 1px solid #fff;
	background: #e8edff url('table-images/gradback.png') repeat-x;
}
#gradient-style tfoot tr td
{
	background: #e8edff;
	font-size: 12px;
	color: #99c;
}
#gradient-style tbody tr:hover td
{
	background: #d0dafd url('table-images/gradhover.png') repeat-x;
	color: #339;
}
</style>
</head>
<body>
<form>
		<div>
			<table>
				<tr>
				<th colspan=4>Consulta de Factura</th>
				</tr>
				<tr>
					<td>Factura Nº:</td>
					<td><input type="text" id="txtfactura" value="${requestScope.model.codFactura}" readonly="readonly"></td>
					<td>Fecha:</td>
					<td><input type="text" id="txtfecha" value="${requestScope.model.feRegistro}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>Cliente:</td>
					<td><input type="text" id="txtCliente" value="${requestScope.model.cliente}" readonly="readonly"></td>
					<td><input type="button" id="imgcliente" onclick="buscarcliente();" style="display: none" ></td>
					<td><input type="hidden" id="hiddencliente" value="${requestScope.model.intidCliente}"></td>
				</tr>
				<tr>
					<td>RUC:</td>
					<td><input type="text" id="txtruc" value="${requestScope.model.ruc}" readonly="readonly"></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</div>
		<div>
		<table>
				<tr>
					<td>Paciente:</td>
					<td><input type="text" id="txtpaciente" value="${requestScope.model.paciente}" readonly="readonly"></td>
					<td><img  id="imgpaciente"/></td>
					<td><input type="hidden" id="hiddenpaciente" value="${requestScope.model.idPaciente}"></td>
				</tr>
			</table>
		</div>
		
		<div>
			<table id="gradient-style" summary="Meeting Results">
				<thead>
		    	<tr>
		        	<th scope="col">Codigo</th>
		            <th scope="col">Producto</th>
		            <th scope="col">Cantidad</th>
		            <th scope="col">Precio</th>
		        </tr>
	    	</thead>
	    	<tbody>
				<c:forEach items="${requestScope.model.detalle}" var="prod" varStatus="i">
			<tr>
				<td width="100">${prod.codProducto}</td>
				<td>${prod.producto}</td>
				<td>${prod.qtCantidad}</td>
				<td>${prod.precio}</td>
			</tr>
			</c:forEach>
				</tbody>
			
			</table>
		</div>
	</form>
</body>
</html>