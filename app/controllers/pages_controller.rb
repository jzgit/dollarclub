class PagesController < ApplicationController
  def index
    @app = App.new
  end
end
