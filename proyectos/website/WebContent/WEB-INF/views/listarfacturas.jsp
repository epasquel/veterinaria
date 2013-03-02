<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Facturación</title>
<style type="text/css">
  .boton{
        font-size:10px;
        font-family:Verdana,Helvetica;
        font-weight:bold;
        color:white;
        background:#638cb5;
        border: 2px outset #d7b9c9;
        /*border:0px;
        width:120px;
        height:19px;*/
       }
</style>
<style type="text/css">
#gradient-style
{
	font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
	font-size: 12px;
	margin: 45px;
	width: 1000px;
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
<div>
		<div>
			<H1><% if(request.getAttribute("mensaje")!=null){ %>
				<%= request.getAttribute("mensaje")%>
		<%	} %>
			</H1>
		</div>
		<h1>Facturas</h1> <p>
		<form id="frmfacturacion" action="nuevafactura" method="get">
			<input type="submit" value="RegistrarFactura" class="boton">
			<a href="Menu.jsp">Menu</a>
		</form>
		<table id="gradient-style" summary="Meeting Results">
			
			<thead>
		    	<tr>
		        	<th scope="col">Factura</th>
		            <th scope="col">Cliente</th>
		            <th scope="col">Fecha</th>

		        </tr>
	    	</thead>
			<tbody>
			<c:forEach items="${model.facturas}" var="prod" varStatus="i">
			<tr>
				<td width="100">${prod.codigofactura}</td>
				<td>${prod.nombrecliente}</td>
				<td>${prod.fecharegistro}</td>
				<td align="center"><a
						href="verfactura?id=${prod.codigofactura}"> <img
							src="<%=request.getContextPath()%>/images/editar.jpg" alt="Consultar" title="" border="0" />
					</a></td>
				<td align="center"><a
						href="eliminarfactura?id=${prod.codigofactura}"><img
							src="<%=request.getContextPath()%>/images/delete.gif" alt="Eliminar" title="" border="0" /></a>
				</td>
			</tr>
			</c:forEach>
			<tbody>
		</table>
		</div>
</body>
</html>