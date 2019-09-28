class Person < ApplicationRecord
  before_create do
    self.full_name = "#{self.first_name} #{self.midle_name} #{self.last_name}"
  end
end
