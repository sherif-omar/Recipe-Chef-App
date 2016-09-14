class Recipe < ActiveRecord::Base

    belongs_to :chef
   has_many :comments
   has_many :likes
   has_many :recipe_categories
   has_many :categories, through: :recipe_categories
   
   mount_uploader :picture, PictureUploader
   validate :picture_size
   
   validates :title , presence: true, length: {minimum:2 ,  maximum: 100}
   validates :description, presence: true, length: {minimum:2}
   
   def thumbs_up_total
       self.likes.where(like: true).size
   end
   
   def thumbs_down_total
       self.likes.where(like: false).size
   end
   
   private
   def picture_size
      if :picture.size > 1.megabytes
          errors.add(:picture, "should your file less 1MB")
          flash[:danger] = "should your file less 1MB"
      end
   end
   
end
