Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #
  namespace :api do
    namespace :v1 do
      get "/account_types", to: "account_types#index"
    end
  end
end
