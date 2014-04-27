<%@page import="java.util.ResourceBundle"%>
<%@ page import="functions.Language" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	ResourceBundle lang = Language.get( ); 
%>

<!-- nav fly -->
<nav class="navbar navbar-inverse" role="navigation">
	<!-- container fluid -->
	<div class="container-fluid">
		<span class="navbar-brand"><%=lang.getString( "IVoo.titulo" )%></span>
	</div>
	<!-- /.container-fluid -->
</nav>
<!-- /. nav fly -->

<form action="">
	<!-- cod fly -->
	<div class="form-group col-sm-12">
		<div class="col-sm-3">
			<label for="codfly"><%=lang.getString( "IVoo.lblCodigo" ) %></label>
			<input type="text" name="codfly" class="form-control" disabled>
		</div>
	</div>
	<!-- /. cod fly -->

	<!-- origin and destiny -->
	<div class="form-group col-sm-12">
		<!-- origin -->
		<div class="col-sm-6">
			<label for="origin"><%=lang.getString( "IVoo.lblOrigem" ) %></label>
			<input type="text" name="origin" class="form-control">
		</div>
		<!-- /. origin -->

		<!-- destiny -->
		<div class="col-sm-6">
			<label for="destiny"><%=lang.getString( "IVoo.lblDestino" ) %></label>
			<input type="text" name="destiny" class="form-control">
		</div>
		<!-- /. destiny -->
	</div>
	<!-- /. origin and destiny -->

	<!-- scales and datetime -->
	<div class="form-group col-sm-12">
		<!-- scales -->
		<div class="col-sm-6">
			<label for="scales"><%=lang.getString( "IVoo.lblEscalas" ) %></label>
			<select name="scales" class="form-control">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>	
			</select>
		</div>
		<!-- /.scales -->

		<!-- datetime -->
		<div class="col-sm-6">
			<label for="datetime"><%=lang.getString( "IVoo.lblDataHora" ) %></label>
			<input type="date" name="datetime" class="form-control">
		</div>
		<!-- /. datetime -->
	</div>
	<!-- /. scales and datetime -->

	<!--  aircrafit and situation -->
	<div class="form-group col-sm-12">
		<!-- aircrafit -->
		<div class="col-sm-6">
			<label for="aircrafit"><%=lang.getString( "IVoo.aeronave" ) %></label>
			<input type="text" name="aircrafit" class="form-control">
		</div>
		<!-- /.aircrafit -->
		<!-- situation -->
		<div class="col-sm-6">
			<label for="situation"><%=lang.getString( "IVoo.situacao" ) %></label>
			<select name="situation" class="form-control">
				<option value="1"><%=lang.getString( "status.espera" ) %></option>
				<option value="2"><%=lang.getString( "status.confirmado" ) %></option>
				<option value="3"><%=lang.getString( "status.cancelado" ) %></option>
				<option value="4"><%=lang.getString( "status.atrasado" ) %></option>
				<option value="5"><%=lang.getString( "status.embarque" ) %></option>
				<option value="6"><%=lang.getString( "status.finalizado" ) %></option>
			</select>
		</div>
		<!-- /. situation -->
	</div>
	<!-- /. aircrafit and situation -->
	
	<!--  save  -->
	<div class="form-group col-sm-12">
		<div class="col-sm-6">
			<button type="submit" class="btn btn-primary navbar-btn"><%=lang.getString( "btnSalvar" ) %></button>
		</div>
	</div>
</form>
