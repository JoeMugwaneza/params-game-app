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

	def have_some_fun

		@number = params[:number]
		@predicted_number = @number.to_i


		if @predicted_number < 35
    	@screen_view = "Your guess is smaller that the correct number"
		
		elsif @predicted_number > 35
			@screen_view = "Your guess is bigger that the correct number"
	 
		elsif @predicted_number == 36
			 @screen_view =  "Gotta it right!"
		end
 
	  render "have_some_fun.html"

	end
end 
