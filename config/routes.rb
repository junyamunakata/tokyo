Rails.application.routes.draw do
  get 'home/top'
  get 'home/about'
  resources :users
  resources :posts
  root 'home#top'
  get 'about' => 'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
