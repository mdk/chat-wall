class PostMigration < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.datetime    :created_at 
      t.string      :body 

      t.timestamps
    end 
  end

  def self.down
    drop_table :posts
  end
end
