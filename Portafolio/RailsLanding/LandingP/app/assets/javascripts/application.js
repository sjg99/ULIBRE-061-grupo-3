// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
$(document).ready(function() {
	$('#MainButton').click(function(){  //referimos el elemento ( clase o identificador de acción )
		$('html, body').animate({scrollTop:0}, 1000); //seleccionamos etiquetas,clase o identificador destino, creamos animación hacia top de la página.
		return false;
    });
    $('#ServicesButton').click(function() {
        $('html, body').animate({
          scrollTop: $("#Services").offset().top
        }, 1000)
        return false;
    });
    $('#AboutButton').click(function() {
        $('html, body').animate({
          scrollTop: $("#About").offset().top
        }, 1000)
        return false;
    });
    $('#TeamButton').click(function() {
        $('html, body').animate({
          scrollTop: $("#Team").offset().top
        }, 1000)
        return false;
    });
    $('#link3ContactButtonBttn').click(function() {
      $('html, body').animate({
        scrollTop: $("#Contact").offset().top
      }, 1000)
      return false;
  });