class Chef < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
         validates :frist_name, presence: true, length: {minimum:2 ,  maximum: 50}
         validates :last_name, presence: true, length: {minimum:2 ,  maximum: 50}
        has_many :recipes
        has_many :comments
        has_many :likes
end
