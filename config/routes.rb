Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :people
      resources :movies do
        member do
          post 'assign_person'
        end
      end
    end
  end
end
