class Paste < ActiveRecord::Base
  validates :content, presence: true
end
