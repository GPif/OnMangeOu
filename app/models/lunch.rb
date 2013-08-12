class Lunch < ActiveRecord::Base
  has_many :attendees, dependent: :destroy
  has_many :choices, :through => :attendees
end
