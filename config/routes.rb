Rails.application.routes.draw do
  get '/' => 'home#top'
  get "about" => "home#about"
  get "contact" => "home#contact"
  get 'post/index' => "post#index"
  get "post/new" => "postnew"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
