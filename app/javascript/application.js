// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import "@hotwired/turbo-rails"
import "controllers"

import 'bootstrap';
import 'bootstrap/dist/js/bootstrap';

$(function() {
    $("#datepicker").datepicker();
    yearRange: "-100:+0"
    changeMonth: true
    changeYear: true
  });

  $(function() {
    $("form").submit(function(event) {
      event.preventDefault();
      const form = $(this);
      const formData = form.serialize();
      console.log(formData);
    });
  });

  function updateSliderValue(value) {
    document.getElementById("sliderValue").textContent = value;
  }
  

//= require jquery-ui/datepicker
