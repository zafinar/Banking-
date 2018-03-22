class Bank < ApplicationRecord
has_many :accounts
has_many :customers, through: :accounts 
belongs_to :city
end
