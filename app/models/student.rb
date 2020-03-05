class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  
  def active 
    if self.active = true 
    else "inactive" 
    end 
  end 
  
end