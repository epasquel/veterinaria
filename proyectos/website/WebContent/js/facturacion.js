console.log("prueba");
$(document).ready(function() {
  $("a#hlBuscarClientePorRuc").on('click', function(e){
	e.preventDefault();
	var ruc = $('input#txtruc').val();
	
	$.ajax({
			type: "GET",
			url: "http://localhost:9080/rest/webresources/rucrest/get/" + ruc,
			success: function(data) {
				alert(data);
			  }
		});
	
  });
});