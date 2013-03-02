<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Facturación</title>
<script language="javascript" type="text/javascript" >
	function buscarcliente(){
		window.open("buscacliente","","width=600,height=600");
	}
	function buscarproducto(){
		window.open("buscaproducto","","width=600,height=400");
	}
	function buscarpaciente(){
		window.open("buscapaciente?idcliente="+ document.getElementById("hiddencliente").value,"","width=600,height=400");
	}
	
	function accion(valor){
		document.getElementById("Hiddenaccion").value=valor;
	}
	
	function detalle(){
		var msg="";
		if(document.getElementById("idproducto").value==""){
				msg="Seleccione un Producto\n";
		}
		if(document.getElementById("txtxcantidad").value==""){
				msg= msg + "Ingrese la cantidad a facturar\n";
		}
		if(msg.length!=0){
			alert(msg);
			return false;
		}
		
		document.getElementById("Hiddenaccion").value="0";
		return true;
	}
	
	function grabar(){
		if(confirm("Desea registrar esta Factura?")){
			var msg="";
			if(document.getElementById("hiddencliente").value=="0"){
				msg="Seleccione un Cliente\n";
			}
			if(document.getElementById("txtruc").value==""){
				msg=msg + "Ingrese RUC del Cliente\n";
			}else{
				if(document.getElementById("txtruc").value.length!=11){
					msg=msg + "RUC incorrecto\n";
				}
			}
			if(document.getElementById("hiddenpaciente").value=="0"){
			msg=msg + "Seleccione un Paciente\n";
			}
			
			if(document.getElementById("Hiddenaccion").value=="-1"){
			msg=msg + "Ingrese un Producto\n";
			}
			
			 if(msg.length!=0){
				 alert(msg);
				 return false;
			 }
			document.getElementById("Hiddenaccion").value="1";
			return true;
		}
		else{
			return false;
		}
	}
	
	function solonumbers(e){
		 var key;

		 if(window.event) // IE
		 {
		  key = e.keyCode;
		 }
		  else if(e.which) // Netscape/Firefox/Opera
		 {
		  key = e.which;
		 }
		
		 if (key < 48 || key > 57) 
		    {
		      return false;
		    }
		
		 return true;
	}
</script>
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
	<form action="recargafactura" method="post">
		<div>
			<table>
				<tr>
				<th colspan=4>Registro de Factura</th>
				</tr>
				<tr>
				<td colspan=4><input type="submit" value="Grabar" onclick="return grabar();">
				<input type="hidden" id="Hiddenaccion" name="Hiddenaccion" value="<%=request.getAttribute("accion")%>"></td>
				</tr>
				<tr>
					<td>Factura Nº:</td>
					<td><input type="text" id="txtfactura" name="txtfactura" value="${requestScope.model.codFactura}" readonly="readonly"/></td>
					<td>Fecha:</td>
					<td><input type="text" id="txtfecha" name="txtfecha" value="${requestScope.model.feRegistro}" readonly="readonly"/></td>
				</tr>
				<tr>
					<td>Cliente:</td>
					<td><input type="text" id="txtCliente" name="txtCliente" value="${requestScope.model.cliente}" readonly="readonly"></td>
					<td><input type="button" id="imgcliente" name="imgcliente" onclick="buscarcliente();" ></td>
					<td><input type="hidden" id="hiddencliente" name="hiddencliente" value="${requestScope.model.intidCliente}"></td>
				</tr>
				<tr>
					<td>RUC:</td>
					<td><input type="text" id="txtruc" name="txtruc" value="${requestScope.model.ruc}" maxlength="11" onkeypress="javascript:return solonumbers(event);"></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</div>
		<div>
		<table>
				<tr>
					<td style="width: 69px; ">Paciente:</td>
					<td><input type="text" id="txtpaciente" name="txtpaciente" value="${requestScope.model.paciente}" readonly="readonly"></td>
					<td><input type="button" id="imgcliente" name="imgcliente" onclick="buscarpaciente();" ></td>
					<td><input type="hidden" id="hiddenpaciente" name="hiddenpaciente" value="${requestScope.model.idPaciente}"></td>
				</tr>
			</table>
		</div>
		<div>
			Productos
			<table>
			
				<tr>
					<td>Producto:</td>
					<td><input type="text" id="idproducto" name="idproducto" readonly="readonly"></td>
					<td><input type="text" id="nombreproducto" name="nombreproducto" readonly="readonly" ></td>
					<td><input type="button" value="Buscar producto" onclick="buscarproducto();"> 
					</td>
				</tr>
				<tr>
					<td>Cantidad:</td>
					<td><input type="text" id="txtxcantidad" name="txtxcantidad" maxlength="5" onkeypress="javascript:return solonumbers(event);"></td>
					<td>Precio:</td>
					<td><input type="text" id="txtprecio" name="txtprecio" readonly="readonly"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Agregar" onclick="return detalle();"></td>
					<td></td>
					<td></td>
					<td></td>
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