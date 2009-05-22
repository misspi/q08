ActionController::Routing::Routes.draw do |map|
  map.resources :smerf_forms

  map.root :controller => 'welcome', :action => 'index'

  map.resources :users

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
