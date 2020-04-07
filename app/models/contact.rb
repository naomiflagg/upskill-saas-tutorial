class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }
  validates :comments, presence: true
end