Rails.application.routes.draw do
  #Root
  root 'contacts#index'

  #Add this line
  resources :contacts

  #For any other routes, redirect to root path
  get '*path' => redirect('/')
end
