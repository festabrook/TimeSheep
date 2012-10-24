class Project < ActiveRecord::Base
  attr_accessible :codeName, :name
  has_many :time_entries
end
