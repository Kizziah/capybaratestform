Capybaratestform::Application.routes.draw do

  devise_for :users

  root :to => 'forms#index'

end
