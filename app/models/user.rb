class User < ActiveRecord::Base

  validates :terms, acceptance: true

end
