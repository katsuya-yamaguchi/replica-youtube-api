class Video < ApplicationRecord
  class << self
    def find_all
      videos = Video.all
      videos.to_json
    end
  end
end
