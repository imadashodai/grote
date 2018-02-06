Rails.application.routes.draw do
  resources :categories
  resources :areas
  resources :shops do
    collection do
      post :import
      get  :csv_import
    end
  end
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
