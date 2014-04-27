$(function() {
	$('.flags').on('click',function(){

		var lang = $(this).attr('data-lang');

		jQuery.post('/usjt-web-aeroporto/api/lang.jsp', {'lang': lang}, function(data, textStatus, xhr) {
			window.location.reload(); 
		});
		
		return false;
	});
});
	
