class AppsController < ApplicationController
  
  def index
    @apps = App.all  
  end
  
  def show
    @app = App.find_by_id(params[:id])
  end
  
  def new
    @app = App.new
  end
  
  def create
    dummy = App.new
    dummy.name = params[:app][:name]
    if dummy.save
      flash[:notice] = "App successfully added!"
    end
    redirect_to apps_url
  end
  
  def edit
    @app = App.find_by_id(params[:id])
  end
  
  def update
    @app = App.find_by_id(params[:id])
    @app.name = params[:app][:name]
    @app.save
    redirect_to apps_url
  end
  
  def destroy
    @app = App.find_by_id(params[:id])
    @app.destroy
    redirect_to apps_url
  end
  
end