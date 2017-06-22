Rails.application.routes.draw do
  get "contact" => "home#contact"
  get 'post/index' => "post#index"
  get "post/new" => "post#new"
  get "post/:id" => "post#show"
  post "post/create" => "post#create"
  get "post/:id/edit" => "post#edit"
  post "post/:id/destroy" => "post#destroy"

  get '/' => 'home#top'
  get "about" => "home#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
