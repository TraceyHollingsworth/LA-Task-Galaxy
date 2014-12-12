class User < ActiveRecord::Base
  has_many :assignments
  has_many :projects, through: :assignments
  has_one :task, through: :projects
  # Is line 4 doable?
  # I'm not sure how to access 1 task per project.
  # I want a user to have many projects
  # and within a project, only one task.
  # I also am assuming that a user can't just have
  # mutliple tasks directly and it must be assigned
  # through a project.
end
