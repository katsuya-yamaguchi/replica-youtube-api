class VideosController < ApplicationController
  def index
    return Video.find_all
  end
end
