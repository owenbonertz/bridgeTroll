// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import "@hotwired/turbo-rails"
import "controllers"

import 'bootstrap';
import 'bootstrap/dist/js/bootstrap';



  document.addEventListener("DOMContentLoaded", function() {
    // Your JavaScript code here
    function updateSliderValue(value) {
      document.getElementById("sliderValue").textContent = value;
    };
  });
  

//= require jquery-ui/datepicker
