class Artist < ApplicationRecord
  validates_uniqueness_of :title
  validates_presence_of :name,:age,:title
  has_many :studios
has_many :instruments, through: :studios
end
