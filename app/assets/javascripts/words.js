// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
    $('.img-film').on('click', function() {
        if($(this).data('winner')) {
            var cuenta = $('#counter').text();
             $('#counter').text(parseInt(cuenta) + 1);

            movies = $.ajax({
			type: "GET",
			url: "http://localhost:3000/reload",
			data: "",
			success: function(response){r_page(response);},
			error: function(){alert("Success: false");},
			dataType: "html"
			});

             $("#main_container").empty();
			$("#main_container").append(movies);


        } else {
            alert('Success: false');    
        }
    });


   /* function nextRound(){

    	$.ajax({
			type: "GET",
			url: "http://localhost:3000/reload",
			data: "",
			success: function(response){r_page(response);},
			error: function(){alert("Success: false");},
			dataType: "html"
		});
    }

    function r_page(movies){
    	$("#main_container").empty();
		$("#main_container").append(movies);
    }*/

});