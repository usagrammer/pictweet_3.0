class Tweet < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments               #commentsテーブルとのアソシエーション

  def self.search(search)
    return Tweet.all unless search
    Tweet.where('text LIKE(?)', "%#{search}%")
  end
end
