class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title, limit: 255
      t.string :account, limit: 255
      t.bigint :num_of_views, null: false, default: 0
      t.string :url, limit: 255, null: false

      t.timestamps
    end
    add_index :videos, [:title, :account], unique: true
  end
end
