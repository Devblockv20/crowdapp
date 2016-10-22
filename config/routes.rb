Rails.application.routes.draw do
  devise_for :users
  
  resources :user_profiles

  root 'static_pages#home'

  get 'contact' => 'static_pages#contact'

  get 'about' => 'static_pages#about'

  get 'help' => 'static_pages#help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
