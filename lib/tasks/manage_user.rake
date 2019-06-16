namespace :manage_user do
  task :add => :environment do |task, args|
    require 'securerandom'

    video = Video.new
    video.attributes = {
      title: SecureRandom.alphanumeric(10),
      account: SecureRandom.alphanumeric(10),
      url: '/' << SecureRandom.alphanumeric(10)
    }
    video.save!
  end

  task :clean => :environment do |task, args|
    Video.delete_all
  end

  task :print => :environment do |task, args|
    p Video.all
  end
end
