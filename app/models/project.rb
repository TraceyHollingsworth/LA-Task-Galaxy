class Project < ActiveRecord::Base
  has_many :assignments
  has_many :tasks
  has_many :users, through: :assignments
end
