class User < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :videos, through: :comments
end
