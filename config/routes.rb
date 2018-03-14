Rails.application.routes.draw do
  root  'users#index'
  get   '/:username', to: 'users#show', as: 'user_show'
  post  '/search', to: 'users#search', as: 'user_search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
