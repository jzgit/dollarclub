// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require handlebars
//= require ember
//= require ember-data
//= require_self
//= require dollar_club

//= require_tree .

$(function(){
    var mX, mY, distance,
      $element  = $('#join'),
      $dollar = $('.dollar');

    function calculateDistance(elem, mouseX, mouseY) {
        return Math.floor(Math.sqrt(Math.pow(mouseX - (elem.offset().left+(elem.width()/2)), 2) + Math.pow(mouseY - (elem.offset().top+(elem.height()/2)), 2)));
    }

    $(document).mousemove(function(e) {
        mX = e.pageX;
        mY = e.pageY;
        distance = calculateDistance($element, mX, mY);

        $element.css({opacity: 100 / distance});
        $dollar.css({opacity: 100 / distance});
    });


    $element.click(function(e){
      $('#new_app').fadeIn('slow');
      $(this).hide();
    });


});
