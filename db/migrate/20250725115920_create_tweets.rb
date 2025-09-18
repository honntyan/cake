class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :name
      t.string :time
      t.string :comment

      t.timestamps
    end
  end
end
