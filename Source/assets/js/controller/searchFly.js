;(function(){
	
	'use strict';

	var app = angular.module('App', []);

	// Controller consulta de voo
	app.controller('SearchFly', ['$rootScope', function($rootScope,$routeParams){
		
		var flyes = [
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

		$rootScope.flys = flyes;
		$rootScope.sitemap = "Controle de Voo";
	}]);

})();
