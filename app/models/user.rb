class User < ActiveRecord::Base
  has_many :microposts
  validated FILL_IN, presence: true
  validated FILL_IN, presence: true
end
