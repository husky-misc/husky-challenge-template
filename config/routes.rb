Rails.application.routes.draw do
  resources :tokens

  resources :invoices do
    collection do
      get :logout
    end
  end

  root "tokens#index"
end
