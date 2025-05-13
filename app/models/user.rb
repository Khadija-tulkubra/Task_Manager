class User < ApplicationRecord
  include ActiveRecord::Enum  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum :role, { user: 0, admin: 1 }  
  has_many :tasks, dependent: :destroy

end
