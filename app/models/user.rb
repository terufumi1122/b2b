class User < ApplicationRecord
  authenticates_with_sorcery!

  with_options presence: true do
    validates :first_name, length: { maximum: 20 } 
    validates :last_name,  length: { maximum: 20 }
    validates :email,      uniqueness: { case_sensitive: true }
  end
  # 以下sorcery公式wikiよりコピペ
  validates :password,              length: { minimum: 3 },      if: -> { new_record? || changes[:crypted_password] }
  validates :password,              confirmation: true,          if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true,              if: -> { new_record? || changes[:crypted_password] }
end
