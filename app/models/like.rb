class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates_uniqueness_of :post_id, scope: :user_id#バリデーション。１人が1つの投稿に対して1つしかイイねを付けられないようにする。
end
