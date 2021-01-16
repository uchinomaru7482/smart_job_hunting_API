Rails.application.routes.draw do
  namespace "api" do
    namespace "v1" do
      get "/logged_in", to: "sessions#logged_in"

      resources :users
      resources :companys
      resources :sessions
    end
  end
end
