Rails.application.routes.draw do
  match 'auth/:provider/callback', to: 'sessions#create', via: :all
  match 'auth/failure', to: redirect('/'), via: :all
  match 'signout', to: 'sessions#destroy', via: :all, as: 'signout'
  match '/signin' => 'sessions#new', via: :all, :as => :signin


  root 'sessions#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
