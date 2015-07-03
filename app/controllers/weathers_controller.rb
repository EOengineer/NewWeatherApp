class WeathersController < ApplicationController

  def index
    if params[:zip_code].present?
      @weather = Weather.new(params[:zip_code]).location
    else
      @weather = Weather.new.location
    end

    respond_to do |format|
      format.html # new.html.erb
      format.js
    end
  end

end
