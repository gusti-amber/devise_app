Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    unlocks: 'users/unlocks'
  }
  
  # ゲストログイン用のルート
  devise_scope :user do
    post '/guest_login', to: 'users/sessions#guest_login', as: :guest_login
  end
  
  root "posts#index"
end
