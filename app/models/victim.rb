class Victim < ApplicationRecord
    validates :name,presence:true
    has_many :attacks, dependent: :destroy
    has_many :monsters, :through => :attacks
end