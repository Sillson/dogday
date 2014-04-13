DogDay::Application.routes.draw do

root :to => "home#index"
  get 'about', to: 'home#about'
  get 'xlarge_breed', to:"home#xlarge_breed"
  get 'large_breed', to:"home#large_breed"
  get 'small_medium_breed', to: "home#small_medium_breed"
  
end
