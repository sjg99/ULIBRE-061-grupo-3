class Usrfav < ApplicationRecord
  belongs_to :user
  belongs_to :route
end
