class Recipe < ActiveRecord::Base

    belongs_to :chef
   has_many :comments
   has_many :likes
   mount_uploader :picture, PictureUploader
   validate :picture_size
   
   
   
   
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
