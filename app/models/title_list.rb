class TitleList < ActiveRecord::Base
  belongs_to :users
  has_many :list_books
end
