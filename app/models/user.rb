class User < ApplicationRecord
  authenticates_with_sorcery!

  with_options presence: true do
    validates :first_name, presense: true, length: { maximum: 20 } 
    validates :last_name,  presense: true, length: { maximum: 20 }
    validates :email,      uniqueness: { case_sensitive: true }
  end
end
