class AddContentToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :content, :string
  end
end
