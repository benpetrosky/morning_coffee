class Interest < ActiveRecord::Base
  belongs_to :user

  validates :interest_name, :presence => true
end
