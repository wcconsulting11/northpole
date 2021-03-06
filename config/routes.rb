Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'agendas#index'
 resources :agendas
 resources :staticpages
 
 get 'weather', to: 'static_pages#weather'
 get 'recipes', to: 'static_pages#recipes'
 get 'facts', to: 'static_pages#facts'
 resources :static_pages#weather
end
