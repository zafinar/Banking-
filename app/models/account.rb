class Account < ApplicationRecord
belongs_to :customer
belongs_to :bank

accepts_nested_attributes_for :customer, reject_if: :all_blank
end
