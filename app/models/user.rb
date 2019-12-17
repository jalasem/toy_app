class User < ApplicationRecord
  has_many :microposts

  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}, format: { with: ConstantData::VALID_EMAIL_REGEX }
end
