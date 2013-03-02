<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<title>Veterinaria - Mantenimiento de Doctores ::.. Agregar nuevo Doctor</title>
<link href="css/style.css" rel="stylesheet" />
<script src="js/jquery-1.7.2.min.js" type="text/javascript"
	charset="utf-8"></script>
<link href="css/jquery-ui-1.8.20.custom.css" rel="stylesheet" />
<script src="js/jquery-ui-1.8.20.custom.min.js" type="text/javascript"
	charset="utf-8"></script>

<script>
	$(function() {
		$( "#datepicker" ).datepicker({ autoSize: true });
	});
</script>

 <!-- Le styles -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="../css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    
    <script language="javascript" type="text/javascript" >
	function buscarcliente(){
		window.open("buscacliente","","width=600,height=600");
	}
	</script>

</head>
<body>

    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">Team Furious</a>
           <div class="btn-group pull-right">
            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
              <i class="icon-user"></i> Username
              <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
              <li><a href="#">Profile</a></li>
              <li class="divider"></li>
              <li><a href="#">Sign Out</a></li>
            </ul>
          </div>
          
          <div class="nav-collapse">
            <ul class="nav">
              <li class="active"><a href="#">Inicio</a></li>
              <li><a href="forms/listarcliente.jsp">Clientes</a></li>
              <li><a href="forms/listardoctor.jsp">Doctores</a></li>
              <li><a href="forms/listarpaciente.jsp">Pacientes</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
	<div class="center_content">
	<h3>Mantenimiento de Pacientes</h3>
	<form action="registrarPaciente.html" method="post">
		<table  border="1">
			<thead>
				<tr>
					<th></th>
					<th>Ingresar Datos</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td></td>
					<td><input type="submit" value="Ingresar"></td>
				</tr>
			</tfoot>
		<tr>
					<td>Cliente:</td>
					<td><input type="text" id="txtCliente" name="txtCliente" value="${requestScope.model.cliente}" readonly="readonly"></td>
					<td><input type="button" id="imgcliente" name="imgcliente" onclick="buscarcliente();" ></td>
					<td><input type="hidden" id="hiddencliente" name="hiddencliente" value="${requestScope.model.intidCliente}"></td>
		</tr>
		<tr>
				<td>Especie:</td>
				<td>
					<select name="cboEspecie" id="cboEspecie">
						<c:forEach items="${sessionScope.ESPECIE}" var="es" varStatus="i">
							<option value="${es.id}">${es.nombre}</option>
						</c:forEach>						
					</select> 
				</td>
			</tr>
			<tr>
				<td>Raza:</td>
				<td>
					<select name="cboRaza" id="cboRaza">
						<c:forEach items="${sessionScope.RAZA}" var="ra" varStatus="i">
							<option value="${ra.id}">${ra.nombre}</option>
						</c:forEach>						
					</select> 
				</td>
			</tr>
			<tr>
				<td>Genero:</td>
				<td>
					<select name="cboGenero" id="cboGenero">
						<c:forEach items="${sessionScope.GENERO}" var="gen" varStatus="i">
							<option value="${gen.id}">${gen.nombre}</option>
						</c:forEach>						
					</select> 
				</td>
			</tr>
			<tr>
				<td>Tipo Sangre:</td>
				<td>
					<select name="cboTipoSangre" id="cboTipoSangre">
						<c:forEach items="${sessionScope.TIPOSANGRE}" var="ts" varStatus="i">
							<option value="${ts.id}">${ts.nombre}</option>
						</c:forEach>						
					</select> 
				</td>
			</tr>
			<tr>
				<td>Esterilizado:</td>
				<td><select id="cboEsterilizado" name="cboEsterilizado">
						<option value="0">No</option>
  						<option value="1">Si</option>
					</select></td>
			</tr>
			<tr>
				<td>Tamaño:</td>
				<td>
					<select name="cboTamano" id="cboTamano">
						<c:forEach items="${sessionScope.TAMANO}" var="ta" varStatus="i">
							<option value="${ta.id}">${ta.nombre}</option>
						</c:forEach>						
					</select> 
				</td>
			</tr>
			<tr>
				<td>Actividad:</td>
				<td>
					<select name="cboActividad" id="cboActividad">
						<c:forEach items="${sessionScope.ACTIVIDAD}" var="ac" varStatus="i">
							<option value="${ac.id}">${ac.nombre}</option>
						</c:forEach>						
					</select> 
				</td>
			</tr>

			<tr>
				<td>Peso:</td>
				<td><input id="txtPeso" name="txtPeso" /></td>
			</tr>
			<tr>
				<td>Fecha Nacmiento:</td>
				<td><input id="txtFechaNacimiento" name="txtFechaNacimiento" /></td>
			</tr>
			<tr>
				<td>Notas Medicas:</td>
				<td><textarea rows="4" cols="30"  id="txtNotasMedicas" name="txtNotasMedicas" ></textarea></td>
			</tr>
			<tr>
				<td>Condiciones Especiales:</td>
				<td><textarea rows="4" cols="30"  id="txtCondicionesEspeciales" name="txtCondicionesEspeciales" ></textarea></td>
			</tr>			
		</table>
	</form>
	</div>
	
	<div>
	<!-- end of center content -->
	      <footer>
        <p>&copy; Furious LLC 2012</p>
      </footer>

    </div> 
    

    
    
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="js/bootstrap.js"></script>
	
</body>
</html>