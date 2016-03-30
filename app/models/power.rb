class Power < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :code_on
  validates_presence_of :code_off
end
