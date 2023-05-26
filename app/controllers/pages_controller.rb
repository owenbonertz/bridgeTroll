class PagesController < ApplicationController
  def home
    @submitted = false
  end

  def submit_form
    # Access form data using the params hash
    
    @pet = params[:pet_name]
    @city = params[:city]
    @image = params[:bbkk]
    @slider = params[:slider].to_i
    @submitted = true

    puts(@pet)
    puts(@city)

    @city.chomp!
    @pet.chomp!

    start_fart = @pet[0]
    start_bruh = @city[0]
    @city[0] = start_bruh
    @pet[0] = start_fart

    fart = @pet
    bruh = @city

    if fart > bruh
      portmanteau = bruh + fart
    else
      portmanteau = fart + bruh
    end

    if @image == "kiki"
      if portmanteau.include? "k"
        portmanteau.gsub!("k", "c")
      end
      if portmanteau.include? "i"
        portmanteau.gsub!("i", "e")
      end
    elsif @image == "booba"
      if portmanteau.include? "b"
        portmanteau.gsub!("b", "d")
      end
      if portmanteau.include? "o"
        portmanteau.gsub!("o", "u")
      end
    end

    if @slider > portmanteau.length
      diffski = ((@slider - portmanteau.length) - 1)
      revPortmanteau = portmanteau.reverse
      startRevPort = revPortmanteau[0..diffski]
      newPort = portmanteau + startRevPort 
    elsif @slider < portmanteau.length
      diffski = ((portmanteau.length - @slider) - 1)
      newPort = portmanteau[0..-1-diffski]
    else
      newPort = portmanteau
    end

    @newPort = newPort
    Rails.logger.debug(@newPort)
    render 'home'
  end
 

end
