Rails.application.routes.draw do
  resources :dogs
  resources :people

  root to: redirect("/", status: 200)

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

end
