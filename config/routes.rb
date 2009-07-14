ActionController::Routing::Routes.draw do |map|


  # ALIAS
  map.login '/entrar', :controller => 'user_sessions', :action => 'new'
  map.logout '/salir', :controller => 'user_sessions', :action => 'destroy'
  
  # EXISTEN LOS usuarios
  map.resources :users, :as => 'usuarios'

  map.resources :user_sessions, :as => 'sesiones'

  map.resources :smerf_forms, :as => 'cuestionario'

  map.root :controller => 'welcome', :action => 'index'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
