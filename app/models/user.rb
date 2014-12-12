class User < ActiveRecord::Base
  has_many :assignments
  has_many :projects, through: :assignments
  # has_one :task, through: :projects
  # has_many :tasks
  # Is line 4 doable?

  # Thought stream:
  # I'm not sure how to access 1 task per project.
  # I want a user to have many projects
  # and within 1 project, only 1 task.
  # I also am assuming that a user can't just have
  # mutliple tasks directly and it must be assigned
  # through a project.
  # I don't want a 1-1 relationship between user & task.
  # Do I even need any connection if task belongs to project?
end
