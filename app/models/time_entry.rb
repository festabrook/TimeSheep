class TimeEntry < ActiveRecord::Base
  attr_accessible :entryCode, :entryTime, :project_id, :user_id
  belongs_to :user
  belongs_to :project
end
