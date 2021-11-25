Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resource :sessions, only: [:show]
      get 'hello', to: 'hello#show'
      get 'login', to: 'sessions#create'
      get 'logout', to: 'sessions#destroy'
    end
  end
end
