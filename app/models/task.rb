class Task < ApplicationRecord
  belongs_to :user
  belongs_to :creator, class_name: "User", foreign_key: "user_id", optional: true
  
  # assignee_id column se assignee associate hoga
  belongs_to :assignee, class_name: "User", foreign_key: "assignee_id", optional: true

   has_many :comments, dependent: :destroy
end
