<%@page import="java.util.ResourceBundle, functions.Language" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	ResourceBundle lang = Language.get(); 
%>
<!-- nav search fly -->
<nav class="navbar navbar-inverse" role="navigation">
	<!-- container fluid -->
	<div class="container-fluid">
		<!-- mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-crud">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<!-- /. mobile display -->

		<!-- nav crud -->
		<div class="collapse navbar-collapse" id="bs-crud">
			<span class="navbar-brand"><%=lang.getString( "IConsultaVoo.titulo" )%></span>
			<ul class="nav navbar-nav">
				<li class="active">
					<a href="#fly/insert"><%=lang.getString( "Inserir" ) %></a>
				</li>
			</ul>
			<form class="navbar-form navbar-right">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="<%=lang.getString("IConsultaAeronave.lblFiltro") %>" ng-model="searchText">
				</div>
			</form>
		</div>
		<!-- /. nav crud -->
	</div>
	<!-- /.container-fluid -->
</nav>
<!-- /. nav search fly -->

<div class="col-sm-12 table-responsive">
	<table class="table table-hover">
		<thead>
			<tr>
				<th><%=lang.getString("IConsultaVoo.coluna.codigo") %></th>
				<th><%=lang.getString("IConsultaVoo.coluna.status") %></th>
				<th><%=lang.getString("IConsultaVoo.coluna.horario") %></th>
				<th><%=lang.getString("IConsultaVoo.coluna.origem") %></th>
				<th><%=lang.getString("IConsultaVoo.coluna.destino") %></th>
			</tr>
		</thead>
		<tbody>
			<tr ng-repeat="fly in flys | filter:searchText" data-toggle="modal" data-target="#m-update-or-delete">
				<td>{{fly.codigo}}</td>
				<td>{{fly.status}}</td>
				<td>dd/mm/yyyy</td>
				<td>{{fly.origem}}</td>
				<td>{{fly.destino}}</td>
			</tr>
		</tbody>
	</table>
</div>
