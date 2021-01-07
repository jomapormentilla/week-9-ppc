class Party < ApplicationRecord
    has_many :party_supplies
    has_many :supplies, through: :party_supplies

    accepts_nested_attributes_for :party_supplies, reject_if: proc{ |attr| attr['quantity'].blank? }

    # def supplies_attributes=(supplies_attribute)
    #     supplies_attribute.each do |supply|
    #         self.supplies << Supply.find_or_create_by
    #     end
    # end

    def private?
        self.private ? 'Private' : 'Public'
    end    

end
