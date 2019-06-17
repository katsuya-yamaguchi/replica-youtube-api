class VideosController < ApplicationController
  def index
    result = Video.find_all
    render json: result
  end
end
