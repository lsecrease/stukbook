class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
      
      
  # Makes sure there's a Usernmae when registering       
  validates_presence_of :username
  validates_uniqueness_of :username
end