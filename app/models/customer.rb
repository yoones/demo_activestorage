class Customer < ApplicationRecord
  # This model can have many attached documents under the `contracts` association
  has_many_attached :contracts

  # This instruction is part of the code that allows us destroy contracts via a customer's update action
  accepts_nested_attributes_for :contracts_attachments, allow_destroy: true
end
