Historyline::Application.routes.draw do

  resources :courses, only: [:index, :show]

  namespace :admin do
    resources :courses do
      resources :events
    end
  end

  namespace :api do
    resources :courses, only: :show
  end
end
