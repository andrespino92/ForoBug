class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def name
    firstname + ' ' + lastname
  end
  
  validates :firstname, presence: true, length: { minimum: 1}
  validates :lastname, presence: true, length: { minimum: 1}
  validates :username, presence: true, length: { minimum: 5}
  
  has_many :posts
end
