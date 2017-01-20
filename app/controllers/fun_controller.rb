class FunController < ApplicationController
	def gaming_action
	  	@name = params[:name]
	  	initial_letter= []
	  	initials = @name.upcase.split("")
	  	initial_letter = initials.first
	  	message = ""

	  if initial_letter == "A"

	  		@message = "Hey, your name starts with the first letter of the alphabet!"
	  end

		@number = params[:number]
		@predicted_number = @number.to_i

		if @predicted_number < 36
    	@screen_view = "Oooh sorry!, make another guess. Just guess higher!"

		elsif @predicted_number > 36
			@screen_view = "Oooh sorry!, make another guess. Just guess lower!."
	 
		elsif @predicted_number == 36
			 @screen_view =  "Woow! you are genius bro, you gotta it!!!!"
		end
	  		render "gaming_action.html"
	end 

end 
