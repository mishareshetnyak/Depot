Rails.application.routes.draw do
  resources :line_items

  get 'store/index'

  resources :products

  root to: 'store#index', as: 'store'

end
