$(document).ready(function() {
  $("a#hlBuscarClientePorRuc").on('click', function(e){
	e.preventDefault();
	var ruc = $('input#txtruc').val();
	
	$.ajax({
			type: "GET",
			url: "/Veterinaria/sunat/ruc/" + ruc,			
			dataType: "jsonp"
		}).done(function( msg ) {
		alert( "Data Saved: " + msg );
		console.log(msg);
	});
	
  });
});