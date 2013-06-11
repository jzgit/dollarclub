DollarClub::Application.routes.draw do
  resources :apps

  get "pages/index"
  root :to => 'apps#new'
end
