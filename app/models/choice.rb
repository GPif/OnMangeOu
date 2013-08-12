class Choice < ActiveRecord::Base

  belongs_to :resto
  belongs_to :attendee

end
