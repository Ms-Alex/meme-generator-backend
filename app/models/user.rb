class User < ApplicationRecord
    validates :username, presence: true,  uniqueness: true
    has_many :memes
    has_many :favorites
end
