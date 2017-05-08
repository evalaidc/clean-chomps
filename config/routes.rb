Rails.application.routes.draw do
  root to: "trends#index"
  resources :trends do
    resources :comments
  end
end
