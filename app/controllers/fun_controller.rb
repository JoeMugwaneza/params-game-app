class FunController < ApplicationController
  def gaming_action
  	@name = params[:name]
  	initial_letter= []
  	initials = @name.upcase.split("")
  	initial_letter = initials.first
  	message = ""

  	if initial_letter == "A"

  		@message = "Hey, your name starts with the first letter of the alphabet!"
  		render "gaming_action.html"
  	end 
  end 

  #def have_fun
  #end 
end
