Rails.application.routes.draw do
  get '/name', to: "fun#name"
  get '/joseph', to: "fun#game"
	get '/new_param/:welcome', to: "fun#new_param"

	get '/mygame', to: "fun#url_segment_form"
	post '/mygame_result', to: "fun#url_segment_form_result"

end
