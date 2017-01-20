class FunController < ApplicationController
	def name
	  	
	  	@name = params[:name]

	  	@message = " "
	  	if @name.upcase.start_with?("A")
			   @message = "Hey, your name starts with the first letter of the alphabet!"
		  end 

		  render "name.html.erb"
			
	end 

	def game
		 
		 correct_number = 36

		 @number = params[:number].to_i
		 @screen_view = ""

		if @number < correct_number
    	
    	@screen_view = "Oooh sorry!, make another guess. Just guess higher!"

		elsif @number > correct_number
			
			@screen_view = "Oooh sorry!, make another guess. Just guess lower!."
		elsif @number == correct_number
			 
			 @screen_view =  "Woow! you are genius bro, you gotta it!!!!"
		
		
		end
		render "name.html.erb"
	end 

	def new_param

		correct_number = 36

		 @number = params[:welcome].to_i
		 @screen_view = ""

		if @number < correct_number
    	
    	@screen_view = "Oooh sorry!, make another guess. Just guess higher!"

		elsif @number > correct_number
			
			@screen_view = "Oooh sorry!, make another guess. Just guess lower!."
		elsif @number == correct_number
			 
			 @screen_view =  "Woow! you are genius bro, you gotta it!!!!"
	
		end
		render "new_param.html.erb"
	end 

	def url_segment_form
		render "url_segment_form.html.erb"
	end 

	def url_segment_form_result

				correct_number = 36

				 @number = params[:number].to_i
				 @screen_view = ""

				if @number < correct_number
		    	
		    	@screen_view = "Oooh sorry!, make another guess. Just guess higher!"

				elsif @number > correct_number
					
					@screen_view = "Oooh sorry!, make another guess. Just guess lower!."
				elsif @number == correct_number
					 
					 @screen_view =  "Woow! you are genius bro, you gotta it!!!!"
			
				end
		render "url_segment_form_result.html.erb"
	end 
end 
