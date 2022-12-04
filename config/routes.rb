Rails.application.routes.draw do
  #resources :dogs
  namespace :v1 do  
    resources :people do
      resources :dogs
    end
  end



  root to: redirect("/", status: 200)

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

end
