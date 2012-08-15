Historyline::Application.routes.draw do
  namespace :admin do
    resources :courses do
      resources :events
    end
  end
end
