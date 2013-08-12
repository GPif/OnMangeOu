class Resto < ActiveRecord::Base
  has_many :choices, dependent: :destroy
end
