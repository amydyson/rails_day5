Rails.application.routes.draw do
  root 'users#register'

#get left side is url => right side is method
#can leave out the right side if it has the same name as the left side

  get 'users/create'

  post 'users/register' => 'users#create'

  get 'users/confirmation'

  get 'users/login' #will get login page

  post 'users/login' => 'users#check' #when you click submit from the login form

  get 'users/logout' #will get login pageas

  post 'users/logout' => 'users#logout' #when you click

  get 'users/welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
