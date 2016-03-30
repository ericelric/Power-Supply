// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require masonry/jquery.masonry
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$(function(){

  function green(object){
    object.css('box-shadow', '0 0 8px 1px rgba(0, 255, 100, 0.8)');
  }

  function red(object){
    object.css('box-shadow', '0 0 8px 1px rgba(189, 30, 35, 0.8)');
  }

  $('.js_box').each(function(){
    if (this.hasAttribute('data-state')) {
      green($(this));
    }
    else {
      red($(this));
    }
  })

  $('.js_on').click( function() {
    $this = $(this)
    $.post('/powers/switch_on/' + $this.data('id'), function(){
      green($this.parent());
    })
  })

  $('.js_off').click( function() {
    $this = $(this)
    $.post('/powers/switch_off/' + $this.data('id'), function(){
      red($this.parent());
    })
  })
})
