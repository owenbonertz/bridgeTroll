class PagesController < ApplicationController
  def home
  end

  def submit_form
    # Access form data using the params hash
    
    @birthday = params[:bday]
    @city = params[:city]
    @number = params[:slider]
    @image = params[:bbkk]
    @submitted = true
    @submitted.save!
    
    # Do something with the form data...
    
    # Redirect to the home page
    redirect_to root_path
  end

end
