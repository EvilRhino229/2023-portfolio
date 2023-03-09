Rails.application.routes.draw do
  devise_for :users

  # static pages
  get '' => "static_pages#home"
  get '/about' => "static_pages#about"
  get '/contact' => "static_pages#contact"
  post '/send_message' => 'static_pages#send_message'
  get '/projects' => "static_pages#projects"
  # experience
  get '/experiences' => 'experiences#index'
  get '/experiences/new' => 'experiences#new'
  post '/experiences' => 'experiences#create'
  get '/experiences/:id' => 'experiences#show'
  get '/experiences/:id/edit' => 'experiences#edit'
  put '/experiences/:id' => 'experiences#update'
  delete '/experiences/:id' => 'experiences#destroy'
  # study
  get '/studies' => 'studies#index'
  get '/studies/new' => 'studies#new'
  post '/studies' => 'studies#create'
  get '/studies/:id' => 'studies#show'
  get '/studies/:id/edit' => 'studies#edit'
  put '/studies/:id' => 'studies#update'
  delete '/studies/:id' => 'studies#destroy'
  # admin panel
  get '/admin_dashboard' => 'users#admin_dash'

end
