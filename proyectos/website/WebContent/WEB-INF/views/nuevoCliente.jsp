<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

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

<link href="css/style.css" rel="stylesheet" />
<title>Veterinaria - Clientes</title>
</head>
<body>

     <div class="" >

      <!-- Main hero unit for a primary marketing message or call to action -->
      <div class="">
			<form name="input" action="registrarCliente.html" method="post">
			
			<div class="control-group">
	          <!-- Text input-->
	          <label class="control-label" for="input01" style="float:left;width:100px">Id Cliente</label>
	          <div class="controls">
	            <input type="text" class="input-xlarge" name="id">
	          </div>
    		</div>
    
    
		    <div class="control-group">
		          <!-- Text input-->
		          <label class="control-label" for="input01" style="float:left;width:100px">Nombre</label>
		          <div class="controls">
		            <input type="text"  class="input-xlarge" name = "txtNombre">
		          </div>
		    </div>
		    
		    <div class="control-group">
		          <!-- Text input-->
		          <label class="control-label" for="input01" style="float:left;width:100px">Ap. Paterno</label>
		          <div class="controls">
		            <input type="text"  class="input-xlarge"  name ="txtApellidoPaterno">
		          </div>
		    </div>
		    
		    <div class="control-group">
		          <!-- Text input-->
		          <label class="control-label" for="input01" style="float:left;width:100px">Ap. Materno</label>
		          <div class="controls">
		            <input type="text"  class="input-xlarge" name ="txtApellidoMaterno">
		          </div>
		    </div>
		    
		    <div class="control-group">
		          <!-- Text input-->
		          <label class="control-label" for="input01" style="float:left;width:100px">Celular</label>
		          <div class="controls">
		            <input type="text" class="input-xlarge" name ="txtCelular">
		          </div>
		    </div>
		    
		    <div class="control-group">
		          <!-- Text input-->
		          <label class="control-label" for="input01" style="float:left;width:100px">Telefono</label>
		          <div class="controls">
		            <input type="text" class="input-xlarge" name ="txtTelefono">
		          </div>
		    </div>
		    
		    <div class="control-group">
		          <!-- Text input-->
		          <label class="control-label" for="input01" style="float:left;width:100px">Direccion</label>
		          <div class="controls">
		            <input type="text" class="input-xlarge" name ="txtDireccion">
		          </div>
		    </div>
		    
		    <div class="control-group">
		          <!-- Text input-->
		          <label class="control-label" for="input01" style="float:left;width:100px">Email</label>
		          <div class="controls">
		            <input type="text" class="input-xlarge" name ="txtEmail">
		          </div>
		    </div>
		    
		    <div class="control-group">
				  <!-- Button -->
		          <div class="controls">
		            <input type="submit" value="Ingresar" class="btn btn-success" >
		          </div>
        	</div>
			
		
	</form>
      </div>

    </div> 



</body>
</html>