class VideosController < ApplicationController
  def index
    Video.find_all
  end
end
