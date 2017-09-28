Rails.application.routes.draw do
 
  get 'solutions/create'

    devise_for :users, controllers: {
        registrations: 'users/registrations',
         sessions: 'users/sessions'
      }
    resources :tasks, only: [:index, :update] do
    	resources :solutions, only: [:create, :index]
    end   

	root to: 'tasks#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
