class AppsController < ApplicationController
  respond_to :json, :html

  def index
    @apps = App.all
    # respond_with App.all
  end

  def show
    respond_with App.find params[:id]
  end

  def create
    @app = App.new(params[:app])
    if @app.save
      redirect_to apps_path
    else
      render 'new'
    end
  end

  def new
    @app = App.new(params[:app])
  end
end
