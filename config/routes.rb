Rails.application.routes.draw do
  resources :coupons, only: [:index, :show,:new , :create]
  get '/patients/:id', to: 'patients#show', as: 'patient'
end
