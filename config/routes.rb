DogDay::Application.routes.draw do

roote :to => "home#index"
  get 'about', to: 'home#about'

end
