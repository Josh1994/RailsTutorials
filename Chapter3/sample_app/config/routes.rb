Rails.application.routes.draw do
  get 'users/new'

  get '/help', to: 'static_pages#help' #as: 'helf' . Change path in test/controller to helf_path to get all green.

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'

  get '/signup', to: 'users#new'

  root 'static_pages#home'

  resources :users
end
