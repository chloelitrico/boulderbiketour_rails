class Slogan < ApplicationRecord
    validates :first_name, :last_name, :email, :description, presence: true
end
