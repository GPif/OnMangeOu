class Attendee < ActiveRecord::Base
  belongs_to :lunch
  has_many :choices
  has_many :restos, :through => :choices
  accepts_nested_attributes_for :choices
end
