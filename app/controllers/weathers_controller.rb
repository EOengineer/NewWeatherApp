class WeathersController < ApplicationController

  def index
    if params[:zip_code].present?
      @weather = Weather.new(params[:zip_code]).location
    else
      @weather = Weather.new.location
    end
  end

end
