Openhub::Application.routes.draw do
  get "openhub/index"

  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

  root to: "openhub#index"
end
