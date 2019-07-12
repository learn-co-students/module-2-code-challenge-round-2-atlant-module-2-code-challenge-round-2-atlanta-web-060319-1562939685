class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :episode_rating, :inclusion => { :in => 1..5 }
end
