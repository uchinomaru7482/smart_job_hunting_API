Rails.application.routes.draw do
  namespace "api" do
    namespace "v1" do
      resources :companys
    end
  end
end
