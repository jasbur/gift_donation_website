class Donor < ActiveRecord::Base
  # attr_accessible :title, :body
  has_one :child
end
