Rails.application.routes.draw do
  resources :herokublogs
  root "herokublogs#index"
end
