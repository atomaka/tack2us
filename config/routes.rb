Tack2us::Application.routes.draw do
  root to: "pastes#index"
  resources :pastes
end
