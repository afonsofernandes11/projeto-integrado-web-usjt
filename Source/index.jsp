<%@page import="java.util.ResourceBundle, functions.Language" language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<% 
ResourceBundle lang = Language.get(); 
%>
<!doctype html>
<html lang="en" ng-app="App">
<head>
	<head>
		<meta charset="UTF-8">
		<title>demo</title>

		<meta name="viewport" content="width=device-width, initial-scale=1">

		<meta name="google" content="notranslate" />

		<link rel="stylesheet" href="assets/css/bootstrap.css">
		<link rel="stylesheet" href="assets/css/fixbug.css">
	</head>
	<body>
		<div class="col-sm-2 no-padding height-100">
			<div class="sidebar-nav height-100">
				<div class="navbar navbar-inverse height-100 no-margin-bottom" role="navigation">
					<div class="navbar-header col-sm-12">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<div class="col-sm-12 no-padding">
							<span class="navbar-brand"><%=lang.getString( "index.menu" )%></span>
						</div>
					</div>
					<div class="navbar-collapse collapse sidebar-navbar-collapse height-100">
						<ul class="nav navbar-nav">
							<!-- dropdown voo -->
							<li>
								<a href="#"><%=lang.getString( "menu.voo" )%></a>
								<!-- sub dropdown voo -->
								<ul class="submenu">
									<li><a href="#searchFly"><%=lang.getString( "menu.voo.consultar" )%></a></li>
									<li><a href="#fly/insert"><%=lang.getString( "menu.voo.cadastrar" )%></a></li>
									<li><a href="#situation"><%=lang.getString( "menu.voo.situacoes" )%></a></li>
								</ul>
								<!-- /. sub dropdown voo -->
							</li>
							<!-- /. dropdown voo -->

							<!-- dropdown aeronave -->
							<li>
								<a href="#"><%=lang.getString( "menu.aeronave" )%></a>
								<!-- sub dropdown aeronave -->
								<ul class="submenu">
									<li><a href="#searchAircrafit"><%=lang.getString( "menu.aeronave.consultar" )%></a></li>
									<li><a href="#aircrafit/insert"><%=lang.getString( "menu.aeronave.cadastrar" )%></a></li>
								</ul>
								<!-- /. sub dropdown aeronave -->
							</li>
							<!-- /. dropdown aeronave -->

							<!-- passagens -->
							<li>
								<a href="#passage"><%=lang.getString( "menu.passagem" )%></a>
							</li>
							<!-- /. passagens -->

							<li>
								<a href="#" data-lang="1" class="flags">
									<img src="assets/img/flag_us.png" alt="Translate to english">
								</a>
								<a href="#" data-lang="2" class="flags">
									<img src="assets/img/flag_spain.png" alt="Traducir en español">
								</a>
								<a href="#" data-lang="0" class="flags">
									<img src="assets/img/flag_brazil.png" alt="Traduzir para português">
								</a>
							</li>

						</ul>
					</div><!--/.nav-collapse -->
				</div>
			</div>
		</div>

		<!--  container  -->
		<div class="col-sm-10 no-padding" ng-view>

		</div>
		<!-- /. container -->

		<!-- modal update or delete -->
		<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" id="m-update-or-delete" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title"><%=lang.getString( "index.menu" )%></h4>
					</div>
					<div class="modal-body">
						<p><%=lang.getString("messagem.alterarOuExcluir") %></p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"><%=lang.getString("Alterar") %></button>
						<button type="button" class="btn btn-primary"><%=lang.getString("Excluir") %></button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div>
		<!--/. modal update or delete -->
		
		<script src="assets/js/jquery-1.10.2.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>

		<script src="assets/js/angular.min.js"></script>
		<script src="assets/js/app.js"></script>

		<script src="assets/js/main.jquery.js"></script>
	</body>
	</html>