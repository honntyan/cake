class Comment < ApplicationRecord
  # コメントしたユーザー
  belongs_to :user
  
  # コメント対象のツイート
  belongs_to :tweet
end
