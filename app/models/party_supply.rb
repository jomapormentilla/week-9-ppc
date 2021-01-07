class PartySupply < ApplicationRecord
    belongs_to :party
    belongs_to :supply

    accepts_nested_attributes_for :supply, reject_if: proc{ |attr| attr['name'].blank? }
end
