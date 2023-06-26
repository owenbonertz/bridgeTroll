// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import "@hotwired/turbo-rails"
import "controllers"

import 'bootstrap';
import 'bootstrap/dist/js/bootstrap';



document.addEventListener("DOMContentLoaded", function() {
  const slider = document.getElementById("slider");
  const sliderValue = document.getElementById("sliderValue");

  // Add event listener to the slider
  slider.addEventListener("input", function() {
    sliderValue.textContent = slider.value;
  });
});

function calculateDaysBetweenDates(begin, end) {
  const millisecondsPerDay = 86400 * 1000;
  const millisBetween = end - begin;
  const days = millisBetween / millisecondsPerDay;
  return 
}

//= require jquery-ui/datepicker
