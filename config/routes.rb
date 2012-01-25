Openhub::Application.routes.draw do
  resources :user_presentations

  resources :presentations

  get "openhub/index"

  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

  root to: "openhub#index"
end
