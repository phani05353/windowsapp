Rails.application.routes.draw do
  devise_for :users
  resources :workouts do
	resources :exercises
  end
  resources:windows,except:[:create, :edit,:show,:update,:destroy,:index]
  root 'workouts#index'
end
