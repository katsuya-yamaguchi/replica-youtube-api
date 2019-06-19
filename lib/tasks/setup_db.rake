# frozen_string_literal: true

namespace :setup_db do
  require 'faker'

  task :add => :environment do
    10.times do |n|
      video = Video.new
      video.attributes = {
        title: Faker::App.name,
        account: Faker::Name.name,
        url: '/' << Faker::Internet.slug
      }
      video.save!
    end
  end

  task :clean => :environment do
    Video.delete_all
  end

  task :print => :environment do
    p Video.all
  end
end
