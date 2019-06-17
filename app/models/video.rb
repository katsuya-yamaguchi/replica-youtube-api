class Video < ApplicationRecord
  class << self
    def find_all
      videos = Video.all
      return videos.to_json
    end
  end
end
