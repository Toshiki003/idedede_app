class Word < ApplicationRecord
  has_many :word_ideas

  # データベースからランダムにワードを取得するためのメソッドを自作する
  def self.sample 
    self.find(rand(1..Word.count))
  end
end
