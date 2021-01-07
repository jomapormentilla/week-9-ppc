class Supply < ApplicationRecord
    has_many :party_supplies
    has_many :parties, through: :party_supplies
end
