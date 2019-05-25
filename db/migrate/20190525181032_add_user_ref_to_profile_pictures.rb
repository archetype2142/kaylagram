class AddUserRefToProfilePictures < ActiveRecord::Migration[5.2]
  def change
    add_reference :profile_pictures, :user, foreign_key: true
  end
end
