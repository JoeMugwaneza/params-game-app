Rails.application.routes.draw do
  get '/gaming_action', to: "fun#gaming_action"
  get '/joe', to: "fun#have_some_fun"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
