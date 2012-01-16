Openhub::Application.routes.draw do
  get "openhub/index"

  root to: "openhub#index"
end
