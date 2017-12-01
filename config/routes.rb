Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'tools#index'
  
  resources :tools do
    collection do
      get :read_calendar, to: 'tools#read_calendar'
      get :google_map, to: 'tools#google_map'
    end  
  end

end
