;(function(){
	'use strict';

	var app = angular.module('App', []);

	// Controlador consulta de voo
	app.controller('Fly', function($rootScope,$routeParams){
		$rootScope.sitemap =  $routeParams.mode + " de Voo";
	});

})();