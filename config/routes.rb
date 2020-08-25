Rails.application.routes.draw do

  # EXAMPLE:
  # get 'static_pages/help' # --> www.example.com/static_pages/help
  # get '/help', to: 'static_pages#help' # --> www.example.com/help

  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
end
