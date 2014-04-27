(function(){
	'use strict';

	var app = angular.module('App', []);
	 
	//configura rotas
	function configApp($routeProvider) {
		$routeProvider
			.when('/searchFly', {
		    	templateUrl: 'view/searchFly.jsp',
		    	controller: 'searchFly'
			})
			.when('/fly/:mode', {
		    	templateUrl: 'view/fly.jsp',
		    	controller: 'Fly'
		  	})
		  	.when('/aircrafit/:mode', {
		  		templateUrl: 'view/aircrafit.jsp',
		  		controller: 'aircrafit'
		  	})
		  	.when('/searchAircrafit', {
		  		templateUrl: 'view/searchAircrafit.jsp',
		  		controller: 'searchAircrafit'
		  	})
		  	.when('/situation', {
		  		templateUrl: 'view/situation.jsp',
		  		controller: 'situation'
		  	})
		  	.when('/passage', {
		  		templateUrl: 'view/passage.jsp',
		  		controller: 'passage'
		  	})
		  	.otherwise({
		    	redirectTo: '/'
		  	});
	}

	app.config( configApp );


	// Controller consulta de voo
	app.controller('searchFly', ['$rootScope', function($rootScope,$routeParams){
		
		//temp até criar a api rest, apenas para testar o filter do angular
		var flys = [
			{
				"codigo" : "01",
				"status" : "Cancelado",
				"origem" : "São Paulo",
				"destino" : "Rio de Janeiro"

			},
			{
				"codigo" : "02",
				"status" : "Disponivel",
				"origem" : "Bahia",
				"destino" : "Pernambuco"

			}
		];

		$rootScope.flys = flys;
		$rootScope.sitemap = "Controle de Voo";
	}]);

	// Controlador consulta de voo
	app.controller('Fly', function($rootScope,$routeParams){
		$rootScope.sitemap =  $routeParams.mode + " de Voo";
	});


	// controller de crud de aeronave
	app.controller('aircrafit', ['$rootscope', function ($rootScope) {
		
	}]);



})();