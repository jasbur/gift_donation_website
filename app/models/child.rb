class Child < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :donor
end
