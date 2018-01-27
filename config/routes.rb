Rails.application.routes.draw do
  resources :categories
  resources :areas
  resources :shops do
    collection {post :import}
  end
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
