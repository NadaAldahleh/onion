class Profile < ActiveRecord::Base
  validates :location, :length   => { :maximum => 10 }
end
