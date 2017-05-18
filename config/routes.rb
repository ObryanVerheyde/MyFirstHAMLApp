Rails.application.routes.draw do
  resources :pop_appels
  root"pop_appels#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
