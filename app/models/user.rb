class User < ApplicationRecord
  authenticates_with_sorcery!

  with_options presence: true do
    validates :first_name
    validates :last_name
    validates :email, uniqueness: { case_sensitive: false }
  end
end
