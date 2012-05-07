MarketingApp::Application.routes.draw do

  get "/apps", :controller => "apps", :action => "index", :as => :apps  
  get "/apps/new", :controller => "apps", :action => "new", :as => :new_app
  
  get "/apps/:id", :controller => "apps", :action => "show", :as => :app
  post "/apps", :controller => "apps", :action => "create"
  
  get "/apps/:id/edit", :controller => "apps", :action => "edit", :as => :edit_app
  put "/apps/:id", :controller => "apps", :action => "update"
  
  delete "/apps/:id", :controller => "apps", :action => "destroy"
end
