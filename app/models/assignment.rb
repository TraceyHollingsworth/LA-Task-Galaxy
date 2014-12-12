class Assignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  validates :project, uniqueness: {scope: :user}
end
