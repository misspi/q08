ActionController::Routing::Routes.draw do |map|

  # EXISTEN LOS usuarios
  map.resources :users, :as => 'usuarios'

  map.resources :user_sessions, :as => 'sesiones'

  map.resources :smerf_forms

  map.root :controller => 'welcome', :action => 'index'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
