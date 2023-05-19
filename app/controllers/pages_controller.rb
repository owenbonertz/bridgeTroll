class PagesController < ApplicationController
  def home
    @submitted = false
  end

  def submit_form
    # Access form data using the params hash
    
    @birthday = params[:bday]
    @city = params[:city]
    @number = params[:slider]
    @image = params[:bbkk]
    @submitted = true

    # take the two words, portmanteau them
    # If kiki replace all B,s with Ks, all O's with I; if bouba, do the reverse
    # repeat the string if you want to

    start_bday = birthday[0]
    start_city = city[0]
    bday[0] = start_city
    city[0] = start_bday

    if bday.length > city.length
      portmanteau = city + bday
    else
      portmanteau = bday + city
    # Do something with the form data...
    
    # Redirect to the home page
    redirect_to root_path
  end

end
