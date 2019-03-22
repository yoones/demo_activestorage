class Profile < ApplicationRecord
  # This model can have one attached document called `avatar`
  has_one_attached :avatar

  # This instruction is part of the code that allows us destroy an avatar via a profile's update action
  accepts_nested_attributes_for :avatar_attachment, allow_destroy: true

  # Example of how to reject a document if its size is too big
  validate :avatar_byte_size, if: ->{ avatar.attached? }

  private

  def avatar_byte_size
    errors.add :avatar, 'too big' if avatar.byte_size > (1024 ** 2)
  end
end
