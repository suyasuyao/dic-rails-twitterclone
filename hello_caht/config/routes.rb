Rails.application.routes.draw do
  resources :mentions, only: [:new, :create, :index, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
