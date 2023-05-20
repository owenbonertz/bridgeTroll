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

    @city.chomp!

    start_fart = fart[0]
    start_bruh = bruh[0]
    fart[0] = start_bruh
    bruh[0] = start_fart

    if fart > bruh
        portmanteau = bruh + fart
    else
        portmanteau = fart + bruh
    end

    if gorpy == "kiki"
        if (portmanteau.include?"k")
            portmanteau.gsub!("k", "c")
        end
        if portmanteau.include?"i"
            portmanteau.gsub!("i", "e")
        end
        
    elsif gorpy == "booba"
        puts("bruh")
        if (portmanteau.include?"b")
            portmanteau.gsub!("b", "d")
        end
        if (portmanteau.include?"o")
            portmanteau.gsub!("o", "u")
        end
        
    end

    #this code is giving us the proper portmanteau, now we reverse and tack/ delete as many characters as are needed to get to the correct character count
  end
 

end
